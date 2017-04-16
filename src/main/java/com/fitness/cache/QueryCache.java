package com.fitness.cache;

import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;
import com.fitness.util.DateFormatUtility;

/**
 * 缓存类
 * */
public class QueryCache {
	protected static Logger s_objLogger = Logger.getLogger(QueryCache.class
			.getName());
	private static HashMap<String, List> s_hmCachedData;
	private static Long s_lCurrentRecordSize;
	private static long s_lRefreshTime;
	private static final long HOUR_MILLISECOND = 3600000L;
	public static final int MAX_CACHE_CAPACITY = 8000;
	public static final int MAX_CACHE_RECORD_CAPACITY = 32000;
	public static final Long MAX_REFRESH_INTERVAL = Long.valueOf(21600000L);

	public QueryCache() {
		if (s_hmCachedData == null)
			reset();
	}

	public List getCacheData(String strKey) {
		if (checkResetCache()) {
			reset();
			return null;
		}
		if (s_hmCachedData.containsKey(strKey))
			return ((List) s_hmCachedData.get(strKey));
		return null;
	}

	public void reset() {
		if (s_hmCachedData != null)
			s_hmCachedData.clear();
		s_hmCachedData = new HashMap();
		s_lCurrentRecordSize = Long.valueOf(0L);
		s_lRefreshTime = System.currentTimeMillis();
		s_objLogger.warning("------Reset Cache Times-----"
				+ DateFormatUtility.getStandardSysdate());
	}

	private boolean checkResetCache() {
		Long lRefreshInterval = Long.valueOf(System.currentTimeMillis()
				- s_lRefreshTime);

		if (lRefreshInterval.longValue() >= MAX_REFRESH_INTERVAL.longValue())
			return true;
		if (s_hmCachedData.size() >= 8000) {
			return true;
		}
		return (s_lCurrentRecordSize.longValue() >= 32000L);
	}

	public void refresh(String strKey, List listRecords) {
		if ((listRecords == null) || (listRecords.size() < 1)) {
			return;
		}
		boolean isRefreshed = false;
		if (!(s_hmCachedData.containsKey(strKey))) {
			s_lCurrentRecordSize = Long.valueOf(s_lCurrentRecordSize
					.longValue() + listRecords.size());
		}
		if (checkResetCache()) {
			isRefreshed = true;
			reset();
		}

		if ((!(s_hmCachedData.containsKey(strKey))) && (isRefreshed))
			s_lCurrentRecordSize = Long.valueOf(s_lCurrentRecordSize
					.longValue() + listRecords.size());
		s_hmCachedData.put(strKey, listRecords);

		if ((s_hmCachedData.size() > 2950) && (s_hmCachedData.size() < 2980)) {
			s_objLogger.warning(s_hmCachedData.size()
					+ "------Current HashTable Size---"
					+ DateFormatUtility.getStandardSysdate());
		}

		if ((s_lCurrentRecordSize.longValue() <= 5800L)
				|| (s_lCurrentRecordSize.longValue() >= 5900L)) {
			return;
		}

		s_objLogger.warning(s_lCurrentRecordSize + "--Current Record Size--"
				+ DateFormatUtility.getStandardSysdate());
	}
}
