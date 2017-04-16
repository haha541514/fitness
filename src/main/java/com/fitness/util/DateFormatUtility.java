package com.fitness.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;


public class DateFormatUtility {

	public static final String STANDARD = "yyyy-MM-dd HH:mm:ss";
	public static final String COMPACT = "yyMMdd HH:mm:ss";
	public static final String FILENAME = "yyMMdd_HHmmss";
	public static final String COMPACTONLYDATE = "yyyyMMdd";
	public static final String COMPACTNOCOMMA = "yyMMddHHmmss";

	public static Date getStringDate(String strDate, String strType) {
		Date date = null;
		SimpleDateFormat objSDF = new SimpleDateFormat(strType);
		try {
			date = objSDF.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	public static Date getStringDate(String strDate, String strType,
			Locale locale) {
		Date date = null;
		SimpleDateFormat objSDF = new SimpleDateFormat(strType, locale);
		try {
			date = objSDF.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	public static String getDateString(GregorianCalendar objGC, String strType) {
		if (objGC == null)
			return "";
		Date objDate = objGC.getTime();
		return getDateString(objDate, strType);
	}

	public static String getStandardDate(GregorianCalendar objGC) {
		return getDateString(objGC, "yyyy-MM-dd HH:mm:ss");
	}

	public static String getFileNameDate(GregorianCalendar objGC) {
		return getDateString(objGC, "yyMMdd_HHmmss");
	}

	public static String getCompactDate(GregorianCalendar objGC) {
		return getDateString(objGC, "yyMMdd HH:mm:ss");
	}

	public static String getDateString(Date objDate, String strType) {
		if (objDate == null)
			return "";
		SimpleDateFormat objSDF = new SimpleDateFormat(strType);
		return objSDF.format(objDate);
	}

	public static String getStandardDate(Date objDate) {
		return getDateString(objDate, "yyyy-MM-dd HH:mm:ss");
	}

	public static String getCompactDate(Date objDate) {
		return getDateString(objDate, "yyMMdd HH:mm:ss");
	}

	public static String getFileNameDate(Date objDate) {
		return getDateString(objDate, "yyMMdd_HHmmss");
	}

	public static String getSysdateString(String strType) {
		Date objDate = new Date();
		return getDateString(objDate, strType);
	}

	public static String getStandardSysdate() {
		Date objDate = new Date();
		return getDateString(objDate, "yyyy-MM-dd HH:mm:ss");
	}

	public static String getCompactNocommaSysdate() {
		Date objDate = new Date();
		return getDateString(objDate, "yyMMddHHmmss");
	}

	public static Date getSysdate() {
		return getStandardDate(getStandardSysdate());
	}

	public static String getCompactSysdate() {
		Date objDate = new Date();
		return getDateString(objDate, "yyMMdd HH:mm:ss");
	}

	public static String getCompactOnlyDateSysdate() {
		Date objDate = new Date();
		return getDateString(objDate, "yyyyMMdd");
	}

	public static String getFileNameSysdate() {
		Date objDate = new Date();
		return getDateString(objDate, "yyMMdd_HHmmss");
	}

	public static Date getStandardDate(String strDate) {
		return getStringDate(strDate, "yyyy-MM-dd HH:mm:ss");
	}

	/*public static String getDBDateString(String strDBDate) {
		try {
			if (StringUtility.isNull(strDBDate))
				return "";
			return SingleColumnQuery.getColumnData("select " + strDBDate
					+ " from dual");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "";
	}*/

	/*public static Date getDBStandardDate(String strDBDate) {
		if (StringUtility.isNull(strDBDate))
			return null;
		strDBDate = getDBDateString(strDBDate);
		return getStandardDate(strDBDate);
	}*/

/*	public static void main(String[] args) {
		String strType = "EEE MMM dd HH:mm:ss 'CST' yyyy";
		String strDateCST = "Thu Mar 24 14:37:00 CST 2016";
		System.out.println(getStandardDate(getStringDate(strDateCST, strType,
				Locale.ENGLISH)));

		System.out.println(getCompactOnlyDateSysdate().substring(2));

		GregorianCalendar objCal = new GregorianCalendar();
		Date objDate = getStandardDate("2011-12-18 10:06:35");
		objCal.setTime(objDate);
		objCal.add(13, 37084);
		String strDate = new SimpleDateFormat("yy-M-dd HH:mm:ss").format(objCal
				.getTime());

		long ll1 = DateUtility.getCalendar("2011-12-11 10:06:35")
				.getTimeInMillis();
		long ll2 = DateUtility.getCalendar("2015-12-19 10:06:35")
				.getTimeInMillis();
		long ll3 = DateUtility.getCalendar("2015-12-27 10:06:35")
				.getTimeInMillis();

		System.out.println(ll2 - ll1);
		System.out.println(ll3 - ll2);

		System.out.println(strDate);
	}*/

}
