package org.wenrong.zhaishidai.utils;

import java.util.UUID;

public class UUIDUtils {

	public static String getRandomStr() {
		
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
}
