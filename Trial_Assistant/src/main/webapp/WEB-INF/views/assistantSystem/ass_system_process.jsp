<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

.ass-label{
    font-size: 30px !important;
    font-weight: 500;
    border-bottom: 2px solid;
}

.ass-part{
    padding-top: 20px;
    padding-bottom: 20px;
}
#ass-textarea{
    height: 300px;
    margin-top: 20px;
}

.dot-size{
    font-size: 20px;
}

.title-box{
    padding-top: 10px;
    padding-bottom: 10px;
}

.ass-sec{
    padding-left: 10% !important;
    padding-right: 10% !important;
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
    font-size: 30px;
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

    .total{
        padding-bottom: 100px;
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









    <!-- 이거는 나중에 어떤 걸 넣을지에 따라서 textarea가 아닐수도 있음 -->
    <!-- Start Categories of The Month -->
    <form class="form-total">
        <section class = "py-3 total-sec">

        <div class="table-box col-lg second-section">
            <div class="announcement-detail-title">
                <h3>조력자 신청 절차</h3>
            </div>

            <div class="ass-part">
                <label class="ass-label">기본 신청 절차</label>
                <div class="form-floating">
                    <!-- 나중에 readonly 속성 추가 -->
                    <textarea class="form-control" placeholder="공통 조력자 정보 및 제도에 대한 내용" id="ass-textarea" ></textarea>
                    <label for="floatingTextarea2"></label>
                </div>
            </div>

            <div class="ass-part">
                <label class="ass-label">개인/기관 신청 절차</label>
                <div class="form-floating">
                    <!-- 나중에 readonly 속성 추가 -->

                    <textarea class="form-control" placeholder="일반 조력자 정보 및 제도에 대한 내용, 필요서류" id="ass-textarea" ></textarea>
                    <label for="floatingTextarea2"></label>
                </div>
            </div>

            <div class="ass-part">
                <label class="ass-label">일반 조력자 신청 절차</label>
                <div class="form-floating">
                    <!-- 나중에 readonly 속성 추가 -->
                    <textarea class="form-control" placeholder="통 번역인 정보 및 제도에 대한 내용, 필요서류" id="ass-textarea" ></textarea>
                    <label for="floatingTextarea2"></label>
                </div>
            </div>

            <div class="ass-part">
                <label class="ass-label">통번역인 신청 절차</label>
                <div class="form-floating">
                    <!-- 나중에 readonly 속성 추가 -->
                    <textarea class="form-control" placeholder="기관 추천 조력자 정보 및 제도에 대한 내용" id="ass-textarea" ></textarea>
                    <label for="floatingTextarea2"></label>
                </div>
            </div>

            <div class="ass-part">
                <label class="ass-label">기관 추천 조력자 신청 절차</label>
                <div class="form-floating">
                    <!-- 나중에 readonly 속성 추가 -->
                    <textarea class="form-control" placeholder="부적격자 선정 요소" id="ass-textarea" ></textarea>
                    <label for="floatingTextarea2"></label>
                </div>
            </div>
            

        </div>
            
            
        
    </section>
    </form>
    </div>


	<%@ include file="../include/footer1.jsp"%>



</body>
</html>