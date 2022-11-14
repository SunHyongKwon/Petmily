package com.petmily.customer.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class FileDAO {

	public String rename(String directory, String fileRealName, String fileChangeName) {
		
		String extension = fileRealName.substring(fileRealName.indexOf("."),fileRealName.length());
		
		try {
			// 업로드된 파일 객체 생성
			File oldFile = new File(directory + fileRealName);

			// 실제 저장될 파일 객체 생성
			File newFile = new File(directory + fileChangeName + extension);
			
			int read = 0;
			byte[] buf = new byte[1024];
			FileInputStream fin = null;
			FileOutputStream fout = null;

			boolean result = oldFile.renameTo(newFile);
			
			// 파일명 rename
			if (!result) {

				// rename이 되지 않을경우 강제로 파일을 복사하고 기존파일은 삭제

				buf = new byte[1024];
				fin = new FileInputStream(oldFile);
				fout = new FileOutputStream(newFile);
				read = 0;
				while ((read = fin.read(buf, 0, buf.length)) != -1) {
					fout.write(buf, 0, read);
				}

				fin.close();
				fout.close();
				oldFile.delete();
			}
		
			return fileChangeName + extension;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
