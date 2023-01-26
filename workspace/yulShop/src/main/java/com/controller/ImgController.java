package com.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class ImgController {
	
	// 메인 페이지
	@RequestMapping(value = "/imgUpload", method = RequestMethod.GET)
    public String ImgUploadPage(){
		return "imgUpload/imgUpload";
    }
	
	//이미지 단일 전용 파일 처리 ajax - 업로드마다 yyyymmddhhmmss 기준으로 폴더를 생성
	@PostMapping("/uploadImgAjax")
    public ModelAndView uploadFile(@RequestParam MultipartFile uploadFile) throws IOException{ //파일업로드인경우 파일관련 IO익셉션을 사용해야한다.	
		
    	ModelAndView mv = new ModelAndView("jsonView");
    	
    	//1. date 포멧 설정 객체로 원하는 폼타입 결정
    	DateTimeFormatter dtf 	= DateTimeFormatter.ofPattern("yyyymmddhhmmss");	
    	//2. 현재 로컬시간 = 현재 컴퓨터의 시간을 가져와서 .now() --> 현재시간을 지정	
    	String todayPath 		= LocalDateTime.now().format(dtf);	// String으로 되어 있는 날짜와 시간을 포맷에 맞게 파싱
    	//3. 저장할 경로를 hard coding으로 작성
    	String basePath 		= "C:\\java_dev\\2.project\\yulShop\\workspace\\yulShop\\workspace\\yulShop\\src\\main\\resources\\loadImg\\imgYulshop";
    	//4. 화면에 출력할 경로에 맞게 처리 --> webConfig에서 실제 파일경로 핸들러 작성해야됨
    	
    	//5. 경로 객체에 두가지 데이터 합침 -- 합친 이유는 파일이 중복되지 않게 처리하기 위해
		Path pathToday 		= Paths.get(basePath, todayPath);	// BasePath 와 현재 날짜를 합친 Path 객체 생성
		String fullName 	= uploadFile.getOriginalFilename();	//파일명
		String fileName 	= fullName.substring(0,fullName.lastIndexOf(".")); //파일명의 0번째부터 "."전까지 잘라 파일명만 가져온다
		String ext		 	= fullName.substring(fullName.lastIndexOf(".")); //파일명에서 "." 포함 나머지 문자열 확장자를 가져온다
        
		String pathName = fileName + todayPath + ext;
		
		String ResourcesPath	= "/loadImg/imgYulshop/" + pathName;
		
        Path targetPath = Paths.get(basePath, pathName); //BasePath + 날짜 + 파일명을 합친 Path 객체 생성
        //6. 받아온 파일을 내가 작성한 하드코딩 경로 3번에 파일을 복사 처리 
        uploadFile.transferTo(targetPath); 
        //file 을 outputStream 으로 내보내 저장.
        
    	mv.addObject("path",ResourcesPath);
    	return mv;
	}
	
	
	//이미지 파일 처리 ajax - 업로드마다 yyyymmddhhmmss 기준으로 폴더를 생성
	@PostMapping("/uploadImgAjax2")
	public ModelAndView uploadFile2(@RequestParam MultipartFile uploadFile) throws IOException{ //파일업로드인경우 파일관련 IO익셉션을 사용해야한다.	
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		//1. date 포멧 설정 객체로 원하는 폼타입 결정
		DateTimeFormatter dtf 	= DateTimeFormatter.ofPattern("yyyymmddhhmmss");	
		//2. 현재 로컬시간 = 현재 컴퓨터의 시간을 가져와서 .now() --> 현재시간을 지정	
		String todayPath 		= LocalDateTime.now().format(dtf);	// String으로 되어 있는 날짜와 시간을 포맷에 맞게 파싱
		//3. 저장할 경로를 hard coding으로 작성
		String basePath 		= "C:\\java_dev\\2.project\\yulShop\\workspace\\yulShop\\workspace\\yulShop\\src\\main\\resources\\loadImg";
		//4. 화면에 출력할 경로에 맞게 처리 --> webConfig에서 실제 파일경로 핸들러 작성해야됨
		String ResourcesPath	= "/loadImg/"+ todayPath + "/" + uploadFile.getOriginalFilename();
		
		//5. 경로 객체에 두가지 데이터 합침 -- 합친 이유는 파일이 중복되지 않게 처리하기 위해
		Path pathToday = Paths.get(basePath, todayPath);	// BasePath 와 현재 날짜를 합친 Path 객체 생성
		//파일을 넣으려는데 폴더가 없는 경우 알아서 생성하는 코드
		if (Files.notExists(pathToday)) {		//저장 할 경로에 폴더가 없을 경우 폴더 생성		  
			Files.createDirectories(pathToday);
		}
		
		Path targetPath = Paths.get(pathToday.toString(), uploadFile.getOriginalFilename()); //BasePath + 날짜 + 파일명을 합친 Path 객체 생성
		//6. 받아온 파일을 내가 작성한 하드코딩 경로 3번에 파일을 복사 처리 
		uploadFile.transferTo(targetPath); 
		//file 을 outputStream 으로 내보내 저장.
		
		mv.addObject("path",ResourcesPath);
		return mv;
	}
	
}
