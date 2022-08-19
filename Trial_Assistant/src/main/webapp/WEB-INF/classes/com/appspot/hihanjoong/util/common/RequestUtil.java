package com.appspot.hihanjoong.util.common;

import java.io.File;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.appspot.hihanjoong.util.file.ExcelManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * request객체를 컨트롤하는 클래스
 *
 * @author 조한중(hanjoongcho@gmail.com)
 *
 */
public class RequestUtil {
   
    public RequestUtil() {
        // TODO Auto-generated constructor stub
    }
   
    /**
     * @param HttpServletRequest request
     * @param String path 저장경로
     * @return HashMap
     */
    public HashMap<String, Object> getFileRequest(HttpServletRequest request,String path){


        HashMap<String, Object> hm = new HashMap<String, Object>();
        if(path == null) return null;
        File dir = new File(path);
        if(!dir.exists()) dir.mkdirs();
        try{
        	MultipartRequest multi=new MultipartRequest(request, path, 250*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
        	Enumeration files = multi.getFileNames();
        	String file = "";
        	File tempFile;
//        	업로드가 가능한 파일 유형을 설정함
//        	String[] canUploadExt = {"doc","docx","xls","xlsx","ppt","pptx","jpg","gif","png","bmp","jpeg","txt","zip","war","iso","hwp","pdf","exe"};
        	
        	int k = 0; //파일시작번호
        	while (files.hasMoreElements()) {
        		file = files.nextElement().toString();
        		if(multi.getFilesystemName(file)!=null){
        			tempFile = multi.getFile(file);
        			String fileName =  multi.getFilesystemName(file);
        			String ext = "";//확장자
        			if(fileName.lastIndexOf(".")>-1){
        				ext = fileName.substring(fileName.lastIndexOf(".")+1).toLowerCase();
        			}
        			boolean pass = true;
//        			if(!ext.isEmpty()){
//        				int size = canUploadExt.length;
//        				for(int i=0;i<size;i++){
//        					if(ext.equals(canUploadExt[i])){
//        						pass = true;
//        						break;
//        					}
//        				}
//        			}
        			if(pass){
        				k++; //파일번호 증가
        				hm.put("originFile_"+k, multi.getOriginalFileName(file));//원본파일
        				hm.put("uploadFile_"+k, fileName);                       //파일이 중복될 경우 변경된 파일명
        				hm.put("fileSize_"+k, tempFile.length());                //파일 사이즈
        				hm.put("path_"+k, tempFile.getParent());                 //파일이 저장된 경로
        			}else{
        				tempFile.delete();
        			}
        		}
        	}
        	//파일의 수를 저장
        	hm.put("totalFile",k);
        }catch (IOException e){
            e.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println(hm);
        return hm;
    }
    
    /**
     * 파라미터로 넘어오는 엑셀파일 처리
     * @param request
     * @param path
     * @return
     * @throws Exception 
     */
    public List<HashMap<String, String>> parseExcel(HttpServletRequest request,String path) throws Exception{
    	List<HashMap<String, String>> list = null;
    	
    	File tempFile = null;
    	MultipartRequest multi=new MultipartRequest(request, path, 250*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
    	Enumeration files = multi.getFileNames();
    	String file = "";
    	while (files.hasMoreElements()) {
    		file = files.nextElement().toString();
    		tempFile = multi.getFile(file);
    		list = ExcelManager.getInstance().getListExcel(tempFile);
    	}
    	return list;
    }

}