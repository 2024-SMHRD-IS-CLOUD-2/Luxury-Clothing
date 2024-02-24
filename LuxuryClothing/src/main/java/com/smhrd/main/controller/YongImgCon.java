package com.smhrd.main.controller;

import java.io.*;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class YongImgCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("YongImgCon 방문!");
		
		String line = null;
		
		// "python" : 그대로 둘 것.
		// 본인 환경에 맞춰 pydev 프로젝트 경로/파일명.py 로 변경
		String phdev = "C:\\Users\\smhrd4\\Desktop\\ServerStudy\\PyOCR\\ImagesReder.py";
		
        ProcessBuilder pb = new ProcessBuilder("PYTHON", phdev);
        Process p = pb.start();
        
        
        BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));

		// pydev 모든기능 완료 후 콘솔로 결과 출력
		while ((line = in.readLine()) != null) {
			// 실행 결과 처리
		    System.out.println(line);
		}
		return line;
	}

}
