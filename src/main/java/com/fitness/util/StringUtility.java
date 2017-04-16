package com.fitness.util;

import java.math.BigDecimal;
import java.security.SecureRandom;
import java.util.HashSet;
import java.util.Vector;
import java.util.StringTokenizer;
import java.util.Hashtable;

public class StringUtility {

	public static String toSQLField(String strSource) {
		if (strSource == null)
			return strSource;
		else {
			strSource = strSource.replace("'", "''");
			strSource = strSource.replace("&", "\\&");
			return "'" + strSource + "'";
		}
	}

	public static String filterStringForDB(String strSource) {
		if (!isNull(strSource)) {
			// 将双字节括号变为单字节括号，这样防止查询不到指定内容
			strSource = strSource.replace('（', '(');
			strSource = strSource.replace('）', ')');

			// 将一个单引号变为双单引号，这样数据库才认为是字符串内部的引号
			strSource = strSource.replace("'", "''");

			// 字符集变换
			/*
			 * if (JavaDBConfig.getCharsetConvert()) strSource =
			 * CharsetConvert.GBToUnicode(strSource);
			 */
			return strSource;
		} else
			return "";
	}

	/**
	 * 如果源字符串为null，则返回""，否则返回源字符串。
	 * 
	 * @param strSource
	 * @return
	 */
	public static String nullToEmpty(String strSource) {
		if (strSource == null)
			return "";
		else
			return strSource;
	}

	/**
	 * 如果源字符串为空字符串，则返回null，否则返回源字符串。
	 * 
	 * @param strSource
	 * @return
	 */
	public static String emptyToNull(String strSource) {
		if ("".equals(strSource))
			return null;
		else
			return strSource;
	}

	public static String nullToSpace(String strInput) {
		if (strInput == null)
			return "&nbsp";
		else
			return strInput;
	}

	/**
	 * 返回字符串strSource在字符c前面的部分
	 * 
	 * @param strSource
	 *            原始字符串
	 * @param c
	 *            切分字符
	 * @return 原始字符串切分字符前的字符串
	 */
	public static String getPrefix(String strSource, char c) {
		int i = strSource.indexOf(c);

		if (i != -1)
			return strSource.substring(0, i);
		else
			return strSource;
	}

	/**
	 * 返回字符串strSource在字符c后面的部分。 CodeGenerator解析查询语句时需要将查询字段前的表信息去掉用到此方法。
	 * 
	 * @param strSource
	 *            原始字符串
	 * @param c
	 *            切分字符
	 * @return 原始字符串切分字符后的字符串
	 */
	public static String cutPrefix(String strSource, char c) {
		int i = strSource.indexOf(c);

		return strSource.substring(i + 1);
	}

	/**
	 * 获取字符串strSource中最后一个c后面的字符串
	 * 
	 * @param strSource
	 * @param c
	 * @return
	 */
	public static String getLast(String strSource, char c) {
		int i = strSource.lastIndexOf(c);

		if (i != -1)
			return strSource.substring(i + 1);
		else
			return strSource;
	}

	public static String getByteSubstring(String strSource, int iLength) {
		return getByteSubstring(strSource, 0, iLength);
	}

	/**
	 * 按字节长度截取子字符串
	 * 
	 * @return
	 */
	private static String getByteSubstring(String strSource, int iStart,
			int iLength) {
		byte[] abtSource = strSource.getBytes();
		int iByteLength = abtSource.length;
		int iRealLength = Math.min(iByteLength - iStart, iLength + 1);
		byte[] abtTarget = new byte[iRealLength];

		System.arraycopy(abtSource, iStart, abtTarget, 0, iRealLength);
		String strTarget = new String(abtTarget);
		int iLastIndex = strTarget.length() - 1;
		strTarget = strTarget.substring(0, iLastIndex);
		return strTarget;
	}

	/**
	 * 获得字符串strSource中在两个字符c中间的部分。 例如源字符串为“Temp is $Temp$”，字符为‘$’，则结果为Temp.
	 * 
	 * @param strSource
	 *            原始字符串
	 * @param c
	 *            切分字符
	 * @return 原始字符串介于切分字符之间的部分
	 */
	public static String getMiddleString(String strSource, char c) {
		int i = strSource.indexOf(c);
		int j = strSource.indexOf(c, i + 1);

		return strSource.substring(i + 1, j);
	}

	/**
	 * 获取被字符c夹在中间的字符串
	 * 
	 * @param strSource
	 * @param c
	 * @return
	 */
	public static Vector<String> getMiddleRecord(String strSource, char c) {
		Vector<String> vctRecord = new Vector<String>();

		if (!StringUtility.isNull(strSource)) {
			int i = strSource.indexOf(c, 0);
			int j = strSource.indexOf(c, i + 1);

			while (i != -1 && j != -1 && j < strSource.length()) {
				// System.out.println(i + ":" + j);
				vctRecord.add(strSource.substring(i + 1, j));
				i = strSource.indexOf(c, j + 1);
				j = strSource.indexOf(c, i + 1);
			}
		}

		return vctRecord;
	}

	/**
	 * 将字符串中夹在字符c中间的部分去掉
	 * 
	 * @param strSource
	 * @param c
	 * @return
	 */
	public static String removeMiddleString(String strSource, char c) {
		String strPrefix = getPrefix(strSource, c);
		String strSuffix = cutPrefix(strSource, c);

		return strPrefix + strSuffix;
	}

	/**
	 * 获得字符串strSource中在字符串c1和c2之间的部分
	 * 例如：源字符串为"max(a,b)"，切分字符串1为'('，切分字符串2为')',则结果为a,b
	 * 
	 * @param strSource
	 *            原始字符串
	 * @param c1
	 *            切分字符1
	 * @param c2
	 *            切分字符2
	 * @return 原始字符串介于切分字符1和切分字符2之间的部分
	 */
	public static String getMiddleString(String strSource, char c1, char c2) {
		int i = strSource.indexOf(c1);
		int j = strSource.indexOf(c2, i);

		// system.out.println(i + ":" + j);
		if (i != -1 && j != -1)
			return strSource.substring(i + 1, j);
		else
			return strSource;
	}

	/**
	 * 将字符串的首字母大写其他字母小写。 CodeGenerator生成方法或类名时用到此方法。
	 */
	public static String initCap(String strSource) {
		return initCapOnly(strSource.toLowerCase());
	}

	/**
	 * 将字符串的首字母大写，其他字母保留原状
	 */
	public static String initCapOnly(String strSource) {
		StringBuffer strBuffer = new StringBuffer(strSource);
		strBuffer.setCharAt(0, Character.toUpperCase(strBuffer.charAt(0)));
		return strBuffer.toString();
	}

	/**
	 * 获得在strElement中从iFrom到iTo的字符ch的数量
	 * 
	 * @param strElement
	 * @param ch
	 * @param iFrom
	 * @param iTo
	 * @return
	 */
	public static int getCharTimes(String strElement, char ch, int iFrom,
			int iTo) {
		int iIndex, iTimes;
		String strTemp;

		iTimes = 0;
		strTemp = strElement.substring(iFrom, iTo);

		while ((iIndex = strTemp.indexOf(ch)) >= 0) {
			iTimes++;
			strTemp = strTemp.substring(iIndex + 1);
		}
		return iTimes;
	}

	public static int getCharTimes(String strElement, String ch, int iFrom,
			int iTo) {
		int iIndex, iTimes;
		String strTemp;

		iTimes = 0;
		strTemp = strElement.substring(iFrom, iTo);

		while ((iIndex = strTemp.indexOf(ch)) >= 0) {
			iTimes++;
			strTemp = strTemp.substring(iIndex + 1);
		}
		return iTimes;
	}

	/**
	 * 获得strElement中iFrom后出现的strTag前面的字符ch的数量
	 * 
	 * @param strElement
	 * @param ch
	 * @param strTag
	 * @param iFrom
	 * @return
	 */
	public static int getCharTimes(String strElement, char ch, String strTag,
			int iFrom) {
		// 首先找到strTage最先出现的位置
		int iIndex;

		if ((iIndex = strElement.indexOf(strTag, iFrom)) >= 0)
			return getCharTimes(strElement, ch, 0, iIndex);
		else
			return -1;
	}

	/**
	 * 找到字符串strElement中不被ch包围最早出现的strTag的索引
	 * 
	 * @param strElement
	 * @param strTag
	 * @param ch
	 * @return
	 */
	public static int getIndex(String strElement, String strTag, char ch) {
		int iTimes, iIndex;

		iIndex = 0;
		iTimes = 0;

		do {
			iIndex = strElement.indexOf(strTag, iIndex);

			if (iIndex > 0) {
				iTimes = StringUtility.getCharTimes(strElement, ch, 0, iIndex);
			}
		} while (iIndex >= 0 && (iTimes % 2) == 1);

		return iIndex;
	}

	/**
	 * 判断字符串是否为空字符串或null，如果是返回true，否则返回false。
	 * 
	 * @param strSource
	 * @return
	 */
	public static boolean isNull(String strSource) {
		if (strSource == null || "".equals(strSource))
			return true;
		else
			return false;
	}

	/**
	 * 比较两个字符串是否相同，支持字符串为null。相同返回true，否则返回 false。
	 * 
	 * @param strA
	 * @param strB
	 * @return
	 */
	public static boolean isEqual(String strA, String strB) {
		if (strA != null) {
			return strA.equals(strB);
		} else {
			if (strB == null)
				return true;
			else
				return false;
		}
	}

	/**
	 * 判断字符串是否等于'Y'，如果是返回true，否则返回false。
	 * 
	 * @param strSource
	 * @return
	 */
	public static boolean isTrue(String strSource) {
		if ("Y".equals(strSource))
			return true;
		else
			return false;
	}

	public static int length(String strSource) {
		if (strSource == null)
			return 0;
		else
			return strSource.length();
	}

	/**
	 * 获取结构代码属于第几层。
	 * 
	 * @param strStructureCode
	 * @param iLevelWidth
	 * @return
	 */
	public static String level(String strStructureCode, int iLevelWidth) {
		int iLevel = length(strStructureCode) / iLevelWidth;
		return Integer.toString(iLevel);
	}

	/**
	 * 将以web访问方式的参数转换为HashMap
	 * 
	 * @param strParameter
	 * @return
	 */
	public static Hashtable<String, String> transformParameter(
			String strParameter) {
		Hashtable<String, String> htParameter = new Hashtable<String, String>();

		if (!isNull(strParameter)) {
			String strNVPair, strName, strValue;
			
			if (strParameter.indexOf("|") > 0)
				strParameter = strParameter.replace("|", "&");
			StringTokenizer stParameter = new StringTokenizer(strParameter, "&");
			while (stParameter.hasMoreElements()) {
				strNVPair = (String) stParameter.nextElement();

				strName = StringUtility.getPrefix(strNVPair, '=');
				strValue = StringUtility.cutPrefix(strNVPair, '=');
				htParameter.put(strName, strValue);
			}
		}
		return htParameter;
	}

	public static String replaceFirst(String strSource, String strOld,
			String strNew) {
		int iSourceLength = strSource.length();
		int iOldLength = strOld.length();
		int iIndex = strSource.indexOf(strOld);

		if (iIndex >= 0) {
			StringBuffer sbDest = new StringBuffer();

			String strPrefix = strSource.substring(0, iIndex);
			String strSuffix = strSource.substring(iIndex + iOldLength,
					iSourceLength);
			sbDest.append(strPrefix);
			sbDest.append(strNew);
			sbDest.append(strSuffix);

			return sbDest.toString();
		} else {
			return strSource;
		}
	}

	public static String removePrefix(String strSource, char chPrefix) {
		if (isNull(strSource))
			return "";
		if (strSource.charAt(0) != chPrefix)
			return strSource;
		String strDest = strSource;
		for (int i = 0; i < strSource.length(); i++) {
			if (strSource.charAt(i) == chPrefix)
				strDest = strSource.substring(i + 1);
			if (i <= strSource.length() - 1
					&& strSource.charAt(i + 1) != chPrefix)
				return strDest;
		}
		return strSource;
	}

	/**
	 * 获得字符串的字节数。
	 * 
	 * @param strSource
	 * @return
	 */
	public static int getByteLength(String strSource) {
		byte[] abtSouce = strSource.getBytes();
		return abtSouce.length;
	}

	/**
	 * 检查字符串是否为模数
	 * 
	 * @param strSource
	 * @param iModNumber
	 * @return
	 */
	public static boolean checkMod(String strSource, int iModNumber) {
		try {
			if (!StringUtility.isNull(strSource)) {
				BigDecimal objSource = new BigDecimal(strSource.substring(0,
						strSource.length() - 1));
				String strMod = objSource.remainder(new BigDecimal(iModNumber))
						.toString();
				if (strSource.substring(strSource.length() - 1).equals(strMod))
					return true;
			}
		} catch (Exception ex) {

		}
		return false;
	}

	public static String getMod(String strSource, int iModNumber) {
		if (!StringUtility.isNull(strSource)) {
			BigDecimal objSource = new BigDecimal(strSource);
			String strMod = objSource.remainder(new BigDecimal(iModNumber))
					.toString();
			return strMod;
		}
		return "";
	}

	public static String substring(String strSource, int iStartIndex,
			int iLength, String strCharest) {
		if (isNull(strSource))
			return "";
		byte[] astr = null;

		try {
			astr = strSource.getBytes(strCharest);
		} catch (Exception ex) {
			ex.printStackTrace();
			astr = strSource.getBytes();
		}
		if (astr.length <= iStartIndex)
			return strSource;
		int iMaxLenght = iStartIndex + iLength;
		byte[] abyteDest = new byte[iLength];

		if (astr.length < iStartIndex + iLength) {
			iMaxLenght = astr.length;
			abyteDest = new byte[astr.length - iStartIndex];
		}
		int iIndex = 0;
		for (int i = iStartIndex; i < iMaxLenght; i++) {
			abyteDest[iIndex] = astr[i];
			iIndex++;
		}

		try {
			return new String(abyteDest, strCharest);
		} catch (Exception ex) {
			ex.printStackTrace();
			return new String(abyteDest);
		}
	}

	public static String substring(String strSource, int iStartIndex,
			int iLength) {
		if (isNull(strSource))
			return "";
		byte[] astr = null;

		astr = strSource.getBytes();

		if (astr.length <= iStartIndex)
			return strSource;
		int iMaxLenght = iStartIndex + iLength;
		byte[] abyteDest = new byte[iLength];

		if (astr.length < iStartIndex + iLength) {
			iMaxLenght = astr.length;
			abyteDest = new byte[astr.length - iStartIndex];
		}
		int iIndex = 0;
		for (int i = iStartIndex; i < iMaxLenght; i++) {
			abyteDest[iIndex] = astr[i];
			iIndex++;
		}
		return new String(abyteDest);
	}

	public static String buildFromByte(String strSource, String strCharest) {
		String[] astr = strSource.split("&");
		if (astr == null || astr.length < 1)
			return "";
		byte[] abyte = new byte[astr.length];
		for (int i = 0; i < astr.length; i++) {
			int iByte = Integer.parseInt(astr[i]);
			if (iByte > 128)
				iByte = iByte - 256;
			abyte[i] = (byte) iByte;
		}
		try {
			return new String(abyte, strCharest);
		} catch (Exception ex) {
			return new String(abyte);
		}
	}

	public static String buildToByte(String strSource, String strCharest) {
		return buildToByte(strSource, strCharest, 0);
	}

	public static String buildToByte(String strSource, String strCharest,
			int iMaxLength) {
		if (isNull(strSource))
			return "";
		byte[] abyte = null;
		try {
			abyte = strSource.getBytes(strCharest);
		} catch (Exception ex) {
			abyte = strSource.getBytes();
		}
		if (abyte == null || abyte.length < 1)
			return "";
		StringBuffer sb = new StringBuffer();
		if (iMaxLength == 0 || iMaxLength > abyte.length)
			iMaxLength = abyte.length;

		for (int i = 0; i < iMaxLength; i++) {
			sb.append(abyte[i]);
			sb.append("&");
		}
		String str = sb.toString();
		return str.substring(0, str.length() - 1);
	}

	public static String replaceWhenNull(String strSource,
			String strReplacevalue) {
		if (isNull(strSource))
			return strReplacevalue;
		return strSource;
	}

	public static String replaceWhenNull(String strSource, String strOldvalue,
			String strNewvalue) {
		if (isNull(strNewvalue))
			strNewvalue = ".";
		return strSource.replace(strOldvalue, strNewvalue);
	}

	public static String toObjectString(Object obj) {
		if (obj.getClass().isArray()) {
			if (obj.getClass().getName().indexOf("String") > 0) {
				HashSet<String> hs = new HashSet<String>();
				String[] astr = (String[]) obj;
				if (astr.length < 1)
					return "";
				for (int i = 0; i < astr.length; i++) {
					hs.add(astr[i]);
				}
				StringBuffer sb = new StringBuffer();
				int i = 0;
				for (String str : hs) {
					sb.append(str);
					i++;
					if (i < hs.size() - 1)
						sb.append(",");
				}
				return sb.toString();
			}
		}
		return obj.toString();
	}

	public static String splitMaxLength(String strSource, int iMaxLength) {
		if (strSource.length() <= iMaxLength)
			return strSource;
		return strSource.substring(0, iMaxLength);
	}

	/**
	 * 取长度的字符 如果源字符为1，要求6位，则前面补0 如果源字符超过6位则截取后6位
	 * 
	 * @param strSource
	 * @param iLength
	 * @return
	 */
	public static String buildLength(String strSource, int iLength) {
		if (isNull(strSource))
			return strSource;

		if (strSource.length() == iLength)
			return strSource;
		if (strSource.length() < iLength) {
			String strReturn = strSource;
			for (int i = 0; i < iLength - strSource.length(); i++)
				strReturn = "0" + strReturn;
			return strReturn;
		}
		if (strSource.length() > iLength)
			return strSource.substring(strSource.length() - iLength, strSource
					.length());

		return strSource;
	}
	
	public static String replaceZeroToLength(String strSource, int iToLength) {
		String strDest = strSource;
		if (!isNull(strSource) && strSource.length() < iToLength) {
		      for (int i = 0; i < iToLength - strSource.length(); i++)
		    	  strDest = "0" + strDest;
		}
		return strDest;
	}
	
	/**
	 * 指定开始字符串和结束字符串，在源字符串中截取中间字符串
	 * @param source
	 * @param start
	 * @param end
	 * @return
	 */
	public static String cutMiddleContent(String source, String start, String end){
		if (isNull(source)) {
			return null;
		}
		int startIdx = source.indexOf(start);
		if (startIdx < 0) {
			return null;
		}
		int startEndIdx = startIdx + start.length();
		int endIdx = source.indexOf(end, startEndIdx);
		if (endIdx < 0) {
			return null;
		}
		return source.substring(startEndIdx, endIdx);
	}
	/**    
     * 每位允许的字符 
     */  
    private static final String POSSIBLE_CHARS="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";  
      
    /** 
     * 生产一个指定长度的随机字符串 
     * @param length 字符串长度 
     * @return 
     */  
    public static String generateRandomString(int length) {  
        StringBuilder sb = new StringBuilder(length);  
        SecureRandom random = new SecureRandom();  
        for (int i = 0; i < length; i++) {  
            sb.append(POSSIBLE_CHARS.charAt(random.nextInt(POSSIBLE_CHARS.length())));  
        }  
        return sb.toString();  
    }  
/*	public static void main(String[] args) {

		System.out.println(substring("1/13 GRIFFITH STREET SOUTH TOWNSVILLE",
				31, 60));

		System.out.println(DBStringUtility
				.transferToInCondition("231255266,123"));
		System.out.println(buildLength("1234567891011", 7));
		// BigDecimal obj = new BigDecimal("30");
		// obj = obj.divide(new BigDecimal("29"), 0, 2);
		try {
			
			
			Hashtable<String, String> ht = transformParameter("AgentServe=&Channel=&BeginDay=-1&EndDay=0&SsgCode=DHL&FetchInterval=5000&fetcherStart=0|fetcherEnd=300|lMaxInterval=5&lMinInterval=0");
			System.out.println(ht.toString());
			
			String[] astr = new String[] { "1" };
			System.out.println(toObjectString(astr));

			System.out.println(substring("测试", 0, 1));

			// System.out.println(StringEscapeUtils.escapeHtml("测试"));
			// //%B2%E2%CA%D4
			String str = "0334".substring(1);
			
			 * str = "灏婃暚鐨 鍖椾含鎹疯緣閫熼 掓湁闄愬叕鍙"; str = new String(str.getBytes(),
			 * "utf-8"); System.out.println(str);
			 * System.out.println(java.net.URLDecoder.decode(str, "gb2312"));
			 * System.out.println(removePrefix(str, '0'));
			 
			str = "尊敬的 北京捷辉速递有限公司 客户";
			str = new String(str.getBytes(), "ISO8859_1");
			System.out.println(str);

			str = "AUF'M RECK 75";
			str = StringUtility.buildToByte(str, "utf-8");
			System.out.println(str);
			System.out.println(StringUtility.buildFromByte(str, "utf-8"));
			
			System.out.println(StringUtility.replaceZeroToLength("123", 3));
			
			
			 * byte[] astr = str.getBytes(); for (int i = 0; i < astr.length;
			 * i++) { System.out.println(astr[i]); } System.out.println(new
			 * String(astr));
			 
		} catch (Exception ex) {
		}

		// System.out.println(obj.toString());
	}*/

}
