package com.fitness.util;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

/**
 * 上传时间帮助类
 * 
 * @author wukq
 * @date 2017-4-7
 * */

public class FileUtil {
	/**
	 * 单个文件上传
	 */
	public static void UploadFile(String fileName, String path, File file,
			String targerDirectory) {
		// String targerDirectory = ServletActionContext.getServletContext()
		// .getRealPath(path);

		System.out.println(targerDirectory);
		// 生成上传文件的对象
		File target = new File(targerDirectory, fileName);
		// 复制file对象，实现上传
		try {
			FileUtils.copyFile(file, target);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 判断文件是否存在
	 */
	public static String fileEX(String path, String fileName,
			String targerDirectory) {
		// String targerDirectory = ServletActionContext.getServletContext()
		// .getRealPath(path);
		String filepath = targerDirectory + "/" + fileName;
		File file = new File(filepath);
		System.out.println(filepath);
		String EX = "";
		if (file.exists())
			EX = "yes";
		else
			EX = "no";
		return EX;
	}

}
