<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

		<!-- 페이지 무조건 추가  -->
	<link rel="shortcut icon" type="image/x-icon"
		href="${pageContext.request.contextPath }/resources/images/favicon.ico">
	
	
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/templatemo.css">

	
	<!-- Load fonts style after rendering the layout styles -->
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/fontawesome.min.css">
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
		
	<!-- 아이콘 깨지는 것 해결하는 script -->
	<script src="https://kit.fontawesome.com/22ff043012.js" crossorigin="anonymous"></script>
		
	<!-- Start Script -->
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-1.11.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-migrate-1.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/templatemo.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>
	<!-- End Script -->
	
	<!-- 무조건 페이지 추가  -->
	
	<style>
.notice-regi-title{
    margin-left: 40%;
}

section{
    height: 80% !important;
}

.notice-regi-text{
    height: 70%;
}

.notice-regi-btn{
    margin-top: 15px;
    float: right;
}

form{
    padding-bottom: 20px;
}

.input-group-text{
    width: 100px;
    display: flex;
    justify-content : center;
}

/* 여기서부터 추가 */
.form-total{
    padding-top: 100px;
}

.side-sec{
    float: left;
    width: 10%;
    margin-left: 0;
}

.total-sec{
    width: 70%;
    float: right;
    margin-right: 100px;
}

.notice-regi-btn{
    margin-top: 10px;
    float: right;
    padding-bottom: 100px;
}

/*
    왼쪽 사이드 카테고리
*/

.col-lg-3 {
    margin-top: 150px;
    margin-left: 100px;
    width: 360px;
}

.pb-3 a {
    font-weight: bold;
    padding-bottom: 15px;
}

.pb-3 a:hover {
    color: #5a95f5;
}

/*-----------------------------------------------------------------*/

/*
    사이드 버튼 이벤트 효과
*/

.action-btn {
    padding: 15px 100px;
    margin:10px 4px;
    font-family: sans-serif;
    text-transform: uppercase;
    text-align: center;
    position: relative;
    text-decoration: none;
    display:inline-block;
    
}

.action-btn::before{
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    width: 100%;
    height: 100%;
    z-index: -1;
    transform: scaleX(.3);
    opacity: 0;
    transition: all .3s
}
  .action-btn:hover::before{
    opacity: 1;
    background-color: #212934;
    -webkit-transform: scaleX(1);
    transform: scaleX(1);
    transition: -webkit-transform .6s cubic-bezier(.08, .35, .13, 1.02), opacity .4s;
    transition: transform .6s cubic-bezier(.08, .35, .13, 1.02), opacity;   
}

.pb-3 a:hover {
    color: white;
}

/*-----------------------------------------------------------------*/


/* title style */
.announcement-detail-title{
    width: 100%;
    margin-bottom: 80px;
}
.announcement-detail-title h3{
    text-align: center;
    margin: 0 auto;
    border-top:2px solid #888888 ;
    border-bottom:2px solid #888888 ;
    padding: 15px;
    color: #808080;
    width: 25%;
    font-size: 20px;
}

textarea{
    resize: none;
}

/* 푸터 */
.under-footer {
        height: 150px;
    }

.footer-box2 {
        padding: 20px 0px;
        position: relative;
        left: 160px;
        bottom: 115px;
        font-size: 17px !important;
        font-weight: 100 !important;
        line-height: 30px;
    }
    
/* input:read-only{

	box-shadow:none;
	background-color: white;
	
} */


/* readonly 스타일 없애주는 css */
.form-control[readonly]{
	background-color:white !important;
}

</style>
</head>
<body>

	<jsp:include page="../include/header.jsp" /> 
	
            <!-- side바 추가 -->
            <div class="total clearfix">
                <!-- form을 감싸고 있음-->
            <div class="container side-sec">
                <div class="row">
        
                    <div class="col-lg-3">
                        <h1 class="h2 pb-4">MY PAGE</h1>
        
                        
        
                        <ul class="list-unstyled templatemo-accordion">
                            <li class="pb-3">
                                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="mypage_ins.html">
                                    MY INFO
                                </a>
                            </li>
                            <li class="pb-3">
                                <a class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo" href="#">
                                    조력자 신청/선정 현황
                                </a>
                            </li>
                            <li class="pb-3">
                                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                    MY FAQ
                                </a>
                            </li>
                            <li class="pb-3">
                                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="index.html">
                                로그아웃
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>








    <!-- Start Categories of The Month -->
    <form class="form-total">
        <section class = "py-3 total-sec">

        <div class="table-box col-lg second-section">
            <div class="announcement-detail-title">
                <h3>공지사항 상세보기 </h3>
            </div>


            <div>
                <div>
                    <div>
                        <div class="input-group mb-3">
                        
                            <span class="input-group-text notice-regist-title">제목</span>
                            <input type="text" class="form-control" name="NoticeTitle" value="${notice.noticeTitle }" aria-label="Text input with segmented dropdown button" readonly>
                            
                        </div>   

                        <div class="input-group mb-3">
                        
                            <span class="input-group-text notice-regist-title">작성자</span>
                            <input type="text" class="form-control" name="NoticeWriter" value = "${notice.noticeWriter }"aria-label="Text input with segmented dropdown button" readonly>

                            <span class="input-group-text">작성일</span>
                            <input type="date" aria-label="First name" value=${notice.noticeDate } class="form-control" readonly>

                            <span class="input-group-text">조회수</span>
                            <input type="text" aria-label="Last name" value = "${notice.noticeHits }" class="form-control" readonly>
                              
                        </div>   

                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04"  value="${notice.noticeFileReal }" readonly>
                            
				    		<button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">다운로드</button> 
 
                        </div>

                        <div class="notice-regi-text">
                            <textarea class="form-control" id="floatingTextarea" style="height: 500px" name="NoticeContent" readonly>${notice.noticeContent }</textarea>
                        </div>
                    </div>
                    
                </div>


                <!-- 관리자로 로그인했을때만 수정버튼 활성화 -->
                <div class="notice-regi-btn">
                
                    <button type="button" class="btn btn-outline-secondary" id="inputGroupFileAddon04" onclick="location.href='<c:url value="/notice/list" /> '">목록</button>
                
                    <button type="button" class="btn btn-outline-secondary" id="inputGroupFileAddon04" onclick="location.href='<c:url value="/notice/modify?num=${notice.noticeNum }" /> '">수정</button>
                </div>

            </div>

        </div>
            
            
        
    </section>
</form>
</div>


	<%@ include file="../include/footer1.jsp"%>



</body>

<script>	

$(function() {
	$('#inputGroupFileAddon04').click(function(){
		alert('다운로드 하시겠습니까? ');
		location.href='<c:url value="/notice/download?fileloca=${notice.noticeFile}" />'
		// 파일 이름을 보내게 되면 해당 파일을 가져오도록 진행 
	});
	
	

	
	
})

	
</script>

</html>