<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
<script src="https://kit.fontawesome.com/22ff043012.js"
	crossorigin="anonymous"></script>

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
.notice-regi-title {
	margin-left: 40%;
}

section {
	height: 80% !important;
}

.notice-regi-text {
	height: 70%;
}

.notice-regi-btn {
	margin-top: 20px;
	float: right;
}

form {
	padding-bottom: 40px;
}

.notice-modi-btn {
	margin-right: 20px;
}

.input-group-text {
	width: 100px;
	display: flex;
	justify-content: center;
}

/* 여기서부터 추가 */
.form-total {
	padding-top: 100px;
}

.side-sec {
	float: left;
	width: 10%;
	margin-left: 0;
}

.total-sec {
	width: 70%;
	float: right;
	margin-right: 100px;
}

.notice-regi-btn {
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
	margin: 10px 4px;
	font-family: sans-serif;
	text-transform: uppercase;
	text-align: center;
	position: relative;
	text-decoration: none;
	display: inline-block;
}

.action-btn::before {
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

.action-btn:hover::before {
	opacity: 1;
	background-color: #212934;
	-webkit-transform: scaleX(1);
	transform: scaleX(1);
	transition: -webkit-transform .6s cubic-bezier(.08, .35, .13, 1.02),
		opacity .4s;
	transition: transform .6s cubic-bezier(.08, .35, .13, 1.02), opacity;
}

.pb-3 a:hover {
	color: white;
}

/*-----------------------------------------------------------------*/

/* title style */
.announcement-detail-title {
	width: 100%;
	margin-bottom: 80px;
}

.announcement-detail-title h3 {
	text-align: center;
	margin: 0 auto;
	border-top: 2px solid #888888;
	border-bottom: 2px solid #888888;
	padding: 15px;
	color: #808080;
	width: 25%;
	font-size: 20px;
}

textarea {
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

/* readonly 스타일 없애주는 css */
.form-control[readonly] {
	background-color: white !important;
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
						<li class="pb-3"><a
							class="collapsed d-flex justify-content-between h3 text-decoration-none"
							href="mypage_ins.html"> MY INFO </a></li>
						<li class="pb-3"><a
							class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo"
							href="#"> 조력자 신청/선정 현황 </a></li>
						<li class="pb-3"><a
							class="collapsed d-flex justify-content-between h3 text-decoration-none"
							href="#"> MY FAQ </a></li>
						<li class="pb-3"><a
							class="collapsed d-flex justify-content-between h3 text-decoration-none"
							href="index.html"> 로그아웃 </a></li>
					</ul>
				</div>
			</div>
		</div>









		<!-- Start Categories of The Month -->
		<form action="<c:url value='/notice/modify'/>" name="noticeModiForm" method="post" class="form-total" enctype="multipart/form-data">
		
			<section class="py-3 total-sec">

				<div class="table-box col-lg second-section">
					<div class="announcement-detail-title">
						<h3>공지사항 수정</h3>
					</div>


					<div>
						<div>
							<div>
								<div class="input-group mb-3">
									<span class="input-group-text notice-regist-title">제목</span> <input
										type="text" class="form-control"
										aria-label="Text input with segmented dropdown button"
										name="NoticeTitle" value="${modiNoti.noticeTitle }" id ="noticetitle">
								</div>

								<div class="input-group mb-3">
									<span class="input-group-text notice-regist-title">작성자</span> <input
										type="text" class="form-control"
										aria-label="Text input with segmented dropdown button"
										name="NoticeWriter" value="${modiNoti.noticeWriter }" readonly>

									<span class="input-group-text">작성일</span>
		                             <input type="date" aria-label="First name" value=${modiNoti.noticeDate } class="form-control" readonly>
		                             <!-- date 제대로 작성안하면 form이 submit이 안되네  -->

										
										<span
										class="input-group-text">조회수</span> <input type="text"
										aria-label="Last name" class="form-control"
										name = "NoticeHits" value = "${modiNoti.noticeHits }" readonly>

								</div>

                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" name="File" value="${modiNoti.noticeFileReal }" >
                            
				    		<button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">등록</button> 
 
                        </div>

								<div class="notice-regi-text">
									<textarea class="form-control" placeholder="공지사항 내용 입력"
										id="floatingTextarea" style="height: 500px" name="NoticeContent" >${modiNoti.noticeContent }</textarea>
								</div>
								
								
							</div>

						</div>

						<!-- 관리자로 로그인했을때만 수정, 삭제 버튼 활성화 -->
						<div class="notice-regi-btn">
							<button class="btn btn-outline-secondary notice-modi-btn" type="button" id="modiBtn">수정</button>

							<button class="btn btn-outline-secondary" type="button" id="delBtn">삭제</button>
						</div>

					</div>

				</div>



			</section>
			<!-- 숨긴 값  -->
			<div class="input-group mb-3" style="display:none">
				<span class="input-group-text notice-regist-title">번호 </span> 
				<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="NoticeNum" value="${modiNoti.noticeNum }">
			</div>
		</form>
	</div>



	<%@ include file="../include/footer1.jsp"%>



</body>

	<script>
/* 	if ($('input[name=NoticeTitle]').val() === ''){
		alert('제목을 작성해주셔야합니다.');
		$('input[name=NoticeTitle]').focus();
		return;
	}
	else if ($('input[name=NoticeContent]').val() === ''){
		alert('내용 작성은 필수사항입니다.');
		$('input[name=NoticeContent]').focus(); 
		return;
	}
	else {
		alert("수정이 정상 처리되었습니다.");
		document.noticeModiForm.submit();
	} */

		$(function() {
			$('#modiBtn').click(function(){
				regist();
			});
			
			function regist(){
				let file = $('#inputGroupFile04').val(); 
				file = file.slice(file.indexOf('.') + 1 ).toLowerCase();
				console.log(file);
				
				if ($('input[name=NoticeTitle]').val() === ''){
					alert('제목을 작성해주셔야합니다.');
					$('input[name=NoticeTitle]').focus();
					return;
				}
				else if ($('input[name=NoticeContent]').val() === ''){
					alert('내용 작성은 필수사항입니다.');
					$('input[name=NoticeContent]').focus(); 
					return;
				}
				else if (file !== 'jpg' && file !== 'png' && file !== 'jpeg' && file !== 'bmp'){
					alert("jpg, png, jpeg, bmp 확장자만 등록하실 수 있습니다.");
					$('#file').val('');
					// 사용자가 등록한 file의 value를 지움 
					return;
				}
				else{
					document.noticeModiForm.submit();
				}
				
			}
			
			
			$('#delBtn').click(function(){
				console.log('삭제버튼 클릭'); 
				
				if(confirm('선택한 공지사항을 삭제하시겠습니까?')){
					location.href='<c:url value="/notice/delete/${modiNoti.noticeNum}" />'; 
				}
				else{
					return;
				}	
			});
			
			// 등록 버튼을 누르게 되면 input 태그의 type이 file로 변환하고 등록 버튼 누르지 못하게 진행 
			$('#inputGroupFileAddon04').click(function(){
				$('#inputGroupFile04').attr("type", "file");
				$('#inputGroupFileAddon04').attr("disabled", true);
			})
			
			
		})
	</script>
</html>