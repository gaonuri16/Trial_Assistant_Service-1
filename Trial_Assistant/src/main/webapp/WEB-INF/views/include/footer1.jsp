<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>인덱스를 만들어 보자</title>
	

</head>
<body>
<!-- Start Footer 회원 -->
<footer class="bg-dark" id="tempaltemo_footer">
    <div class="container">
        <div class="row">

            <div class="col-3 pt-5"> 
                <h2 class="h2 text-light border-bottom pb-3 border-light">공고</h2>
                <ul class="list-unstyled text-light footer-link-list">
                    <li><a class="text-decoration-none" href="#">공고 조회</a></li>
                </ul>
            </div>

            <div class="col-3 pt-5"> 
                <h2 class="h2 text-light border-bottom pb-3 border-light">공지사항</h2>
                <ul class="list-unstyled text-light footer-link-list">
                    <li><a class="text-decoration-none" href="#">공지사항</a></li>
                    <li><a class="text-decoration-none" href="#">조력자 안내</a></li>
                </ul>
            </div>

            <div class="col-3 pt-5"> 
                <h2 class="h2 text-light border-bottom pb-3 border-light">조력자 신청</h2>
                <ul class="list-unstyled text-light footer-link-list">
                    <li><a class="text-decoration-none" href="#">조력자 신청하기</a></li>
                </ul>
            </div>

            <div class="col-3 pt-5">
                <h2 class="h2 text-light border-bottom pb-3 border-light">마이 페이지_회원</h2>
                <ul class="list-unstyled text-light footer-link-list">
                    <li><a class="text-decoration-none" href="#">조력자 신청 현황/선정여부</a></li>
                    <li><a class="text-decoration-none" href="#">나의 정보</a></li>
                    <li><a class="text-decoration-none" href="#">MY FAQ</a></li>
                </ul>
            </div>
            

        </div>

    



        <div class="w-100 bg-dark py-3 under-footer">

                    <div class="footer-box1" >
                        <img class="footer-box1-img" width="100px" src="${pageContext.request.contextPath }/resources/images/logo.png" alt="Logo Image">
                    </div>
    
                    <div class="text-white footer-box2">
                        (06590) 서울 특별시 서초구 서초대로 219
                        <br>
                        대표전화 02) 3480 - 1100 | 홈페이지 이용 문의 02) 3480 - 1715(평일 9시 ~ 18시) | 인터넷 등기 사용자 지원센터 1544 - 0770
                        <br>
                        2조 노권표 문경록 안다솔 이혜원 이유림
                    </div>
      	  </div>
        
    </div>

    

</footer>

    
    </body>