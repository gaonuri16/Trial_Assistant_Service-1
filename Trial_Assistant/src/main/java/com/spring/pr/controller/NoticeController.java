package com.spring.pr.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.pr.command.NoticeVO;
import com.spring.pr.command.UploadVO;
import com.spring.pr.notice.service.INoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	// 화면 확인용 controller 
	
	@Autowired
	private INoticeService service;
	
	@GetMapping("/write")
	public String write() {
		System.out.println("/notice/write : GET");
		return "notice/notice_regist_admin";
	}
	
//	@PostMapping("/write")
//	public String write(NoticeVO notice, MultipartHttpServletRequest files) {
//		
//		
//		try{
//			System.out.println("/notice/write : POST");
//		
//		notice.setMNGRID("managerID");
//		
//		List<MultipartFile> fileList = files.getFiles("NoticeFile");
//		String uploadFolder = "/Users/sig6774/Desktop/Project_Workspace/IMAGE";
////				/Users/sig6774/Desktop/스크린샷
////				C:/Users/MSI/Desktop
//		
//		for(MultipartFile file : fileList) {
//			String fileRealName = file.getOriginalFilename();
//			
//			long size = file.getSize();
//			
//			System.out.println("파일 이름 :" + fileRealName );
//			System.out.println("파일 크기 : " + size);
//			
//			File saveFile = new File(uploadFolder + "/" + fileRealName);
//			file.transferTo(saveFile);
//		}
//		
//		System.out.println("작성 공지 내용 : " + notice.toString());
//		service.regist(notice);
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//		return "redirect:/notice/list";
//	}
	
	@PostMapping("/write")
	public String write_file(NoticeVO notice, MultipartHttpServletRequest files) {
		// 여러 파일이 controller로 들어오기 때문에 MultipartHttpServletRequest 인터페이스를 통해 
		// 가져올 수 있음 
		
		// 날짜별로 폴더 생성해서 파일 관리
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		String filelocation = sdf.format(date);
		
		
		// 서버에서 파일을 저장할 경로 
		String uploadPath = "/Users/sig6774/Desktop/Project_Workspace/IMAGE"+filelocation;
		
		File folder = new File(uploadPath);
		if(!folder.exists()) {
			folder.mkdirs();
			// 폴더가 없다면 상위 폴더까지 모두 생성 
		}
		
		List<MultipartFile> fileList = files.getFiles("File");
		// getFiles안에는 Controller로 들어오는 파라미터 이름을 작성하면 list형태로 받을 수 있음
		System.out.println("/notice/write : POST ");
		

		for (MultipartFile file : fileList) {
			try {
				
				// 파일 명을 고유한 랜덤 문자로 생성
				UUID uuid = UUID.randomUUID();
				String uuids = uuid.toString().replaceAll("-", "");
				
				String fileRealName = file.getOriginalFilename();
				// 파일 이름 가져오기 
				long size = file.getSize();
				// 파일 크기 가져오기 
				
				String fileExtention = fileRealName.substring(fileRealName.indexOf("."), fileRealName.length());
				String fileName = uuids + fileExtention;


				System.out.println("파일 이름 : " + fileName);
				System.out.println("파일 크기 : " + size);

				File saveFile = new File(uploadPath + "/" + fileName);
				// File객체를 사용해서 경로 지정 
//				System.out.println(saveFile.toString());

				file.transferTo(saveFile);
				// 위에서 지정한 경로로 값을 보냄
				
				notice.setNoticeFile(uploadPath + "/" + fileName);
				notice.setNoticeFileReal(fileRealName);
				notice.setMNGRID("managerID");
				service.regist(notice);
			}
			// 반복문을 활용하여 값을 넣을 수 있음 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/notice/list";
	}
	
	
	@GetMapping("/list")
	public String listNotice(Model model) {
		System.out.println("/notice/list : GET");
		model.addAttribute("noticeList", service.getList());
		
		return "notice/notice_list";
	}
	
	@GetMapping("/content/{noticeNum}")
	public String contentBoard(@PathVariable int noticeNum,  Model model) {
		System.out.println("/notice/content : GET");
		
		model.addAttribute("notice", service.getContent(noticeNum));
		return "notice/notice_detail";
	}
	
	
	@GetMapping("/modify")
	public String moveModify(@RequestParam("num") int noticeNum, Model model) {
		System.out.println("/notice/modify : GET");
		System.out.println("공지사항 수정 번호 확인 : " + noticeNum );
		
		model.addAttribute("modiNoti", service.getContent(noticeNum)); 
		
		return "notice/notice_modify_admin";
	}
	
	@PostMapping("/modify")
	public String update(NoticeVO notice, RedirectAttributes ra, MultipartHttpServletRequest files) {
		System.out.println("/notice/update : POST");
		System.out.println("수정 공지 내용 : " + notice.toString());
		
		// 날짜별로 폴더 생성해서 파일 관리
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		String filelocation = sdf.format(date);
		
		
		// 서버에서 파일을 저장할 경로 
		String uploadPath = "/Users/sig6774/Desktop/Project_Workspace/IMAGE"+filelocation;
		
		File folder = new File(uploadPath);
		if(!folder.exists()) {
			folder.mkdirs();
			// 폴더가 없다면 상위 폴더까지 모두 생성 
		}
		
		List<MultipartFile> fileList = files.getFiles("File");
		// getFiles안에는 Controller로 들어오는 파라미터 이름을 작성하면 list형태로 받을 수 있음
		

		for (MultipartFile file : fileList) {
			try {
				
				// 파일 명을 고유한 랜덤 문자로 생성
				UUID uuid = UUID.randomUUID();
				String uuids = uuid.toString().replaceAll("-", "");
				
				String fileRealName = file.getOriginalFilename();
				// 파일 이름 가져오기 
				long size = file.getSize();
				// 파일 크기 가져오기 
				
				String fileExtention = fileRealName.substring(fileRealName.indexOf("."), fileRealName.length());
				String fileName = uuids + fileExtention;


				System.out.println("파일 이름 : " + fileName);
				System.out.println("파일 크기 : " + size);

				File saveFile = new File(uploadPath + "/" + fileName);
				// File객체를 사용해서 경로 지정 
//						System.out.println(saveFile.toString());

				file.transferTo(saveFile);
				// 위에서 지정한 경로로 값을 보냄
				
				notice.setNoticeFile(uploadPath + "/" + fileName);
				notice.setNoticeFileReal(fileRealName);
				service.update(notice);
			}
			// 반복문을 활용하여 값을 넣을 수 있음 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return "redirect:/notice/list";
	}
	
	@GetMapping("/delete/{noticeNum}")
	public String delete(@PathVariable int noticeNum, RedirectAttributes ra) {
		System.out.println("삭제 요청 파라미터 가져오는지 확인 : " + noticeNum);
		service.delete(noticeNum);
		
		return "redirect:/notice/list";
	}
	
	@GetMapping("/download")
	@ResponseBody
	public ResponseEntity<byte[]> download(@RequestParam("fileloca") String filelocation) {
		System.out.println("notice/download : GET ");
		System.out.println("download 요청 값 가져오는지 확인 : " + filelocation );
		
		File file = new File(filelocation);
		
		ResponseEntity<byte[]> result = null;
		
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Disposition", "attachment; filename=" + filelocation);
		
		try {
			result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
