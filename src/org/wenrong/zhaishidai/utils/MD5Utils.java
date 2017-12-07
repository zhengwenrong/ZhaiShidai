package org.wenrong.zhaishidai.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {
	/**
	 * ʹ��md5���㷨���м���
	 */
	public static String md5(String plainText) {
		byte[] secretBytes = null;
		try {
			
						// ��ϢժҪ 
			secretBytes = MessageDigest.getInstance("md5").digest(
					plainText.getBytes());
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException("û��md5����㷨��");
		}
		
		String md5code = new BigInteger(1, secretBytes).toString(16);// 16��������
		// �����������δ��32λ����Ҫǰ�油0
		for (int i = 0; i < 32 - md5code.length(); i++) {
			md5code = "0" + md5code;
		}
		return md5code;
	}

	//mysql: 202cb962ac59075b964b07152d234b70
	//java:  202cb962ac59075b964b07152d234b70
	public static void main(String[] args) {
		System.out.println(md5("123"));
	}

}
