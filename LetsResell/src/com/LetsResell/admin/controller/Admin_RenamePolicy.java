package com.LetsResell.admin.controller;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class Admin_RenamePolicy implements FileRenamePolicy{
	Random ran = new Random();
	// 기존의 파일(원본 파일)을 전달받아서 수정명작업을 마친 수정된 파일을 반환해주는 메소드
	@Override
	public File rename(File originFile) {
		
		// 원본 파일명("aaa.jpg")
		String originName = originFile.getName();
		
		// 수정 파일명 : 파일 업로드한 시간 (년,월,일,시,분,초) + 5자리 랜덤값(10000~99999) + 기존의 확장자(.jpg)
		// 1. 파일 업로드한 시간 알아내기 (년,월,일,시,분,초 형태) (String currentTime)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String currentTime = sdf.format(new Date());
		
		// 2. 5자리 랜덤값 (int ranNum)
		// int ranNum = (int)(Math.random()*90000+10000);
		int ranNum = ran.nextInt(99999-10000+1) + 100000;
		
		// 3. 기존 파일의 확장자 (String ext)
		// --> 원본 파일명에서 .이 위치해있는 인덱스 알아내기
		int dot = originName.lastIndexOf(".");
		String ext = originName.substring(dot); // ".jpg"
		
		// 4. 이제 각각 구해놓은 값들 다 조합해서 최종 수정명
		String fileName = currentTime + ranNum + ext; // "2020091512423235.jpg"
		
		// 5. 전달받은 원본파일 (originFile)을 수정된 파일명으로 파일객체 생성해서 리턴
		File renameFile = new File(originFile.getParent(), fileName);
		
		return renameFile;
	}

	
}
