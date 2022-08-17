<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title> 회원가입(회원) 정보입력 페이지  </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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


/* Start joinSelect.css */

.person-check::after{
    content: "";
    display: block;
    clear: both;
}

.person-o-total{
    float: left;
    margin-left: 100px;
}
.person-x-total{
    float: right;
    margin-right: 100px;
}
.next-btn{
    text-align: center;
}

.next-btn-box{
    margin-top: 50px;
}
/* End joinSelect.html의 css */

/* Start join.html의 css*/
.title-box{
    text-align: center;
    justify-content: center;
    margin: 0 auto 50px;
    font-size: 30px !important;
    border:1px solid lightgray;
    border-radius: 40px;
    width: 200px;
    background-color: rgb(228, 227, 227);
    color: rgb(132, 127, 127);
    font-weight: 500 !important;
}
/*btn-outline-secondary 적용시 왼쪽 짤림 보완 스타일 */
.btn-add-style{
    border-left: 2px solid gray;
    background-color: white;

}



.form-box{
    max-width: 600px;
    min-width: 400px;
}
.gender-male-total{
    float: left;
    margin-right: 200px;
}
.gender-male, .gender-female{
    margin-right: 30px;
}

.gender::after {
 content: "";
 display: block;
 clear: both;
}

.gender {
margin: 10px 0;
}



label {
    font-weight: 700 !important;
}

button:hover{
    cursor: pointer;
}

.join-btn, .cencel-btn{
    text-align: center;
}

.join-btn{
    margin-left: 90px;
}
.cencel-btn{
    margin-right: 90px;
}
/* End join.html의 css*/


</style>
</head>
<body>
	<jsp:include page="../include/header.jsp" /> 


<!-- Start 회원가입 (기관) -->
<div class="container py-5">
    <div class="row py-5">
        <form class="form-box m-auto" method="post" role="form">

            <div class="title-box">회원가입</div>

            <div class="mb-3">
                <label for="inputJoinId">아이디</label>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" id="joinId" name="joinId" placeholder="아이디를 입력하세요.">
                    <button class="input-group-text btn-add-style btn-outline-secondary double-check-btn">중복확인</button>
                </div>
            </div>
            <div class="mb-3">
                <label for="inputJoinPw">비밀번호</label>
                <input type="text" class="form-control mt-1" id="joinPw" name="joinPw" placeholder="비밀번호를 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="inputJoinPwCheck">비밀번호 확인</label>
                <input type="text" class="form-control mt-1" id="joinPwCheck" name="joinPwCheck" placeholder="비밀번호를 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="inputJoinName">이름</label>
                <input type="text" class="form-control mt-1" id="joinName" name="joinName" placeholder="이름을 입력하세요.">
            </div>
            <div class="row">
                <div class="form-group col-md-6 mb-2">
                    <label for="inputname">주민등록번호</label>
                    <input type="text" class="form-control mt-1" id="joinSocNum1" name="joinSocNum1" placeholder="앞 6자리">
                </div>

                <div class="form-group col-md-6 mb-2">
                    <label for="inputemail"></label>
                    <input type="text" class="form-control mt-1" id="joinSocNum2" name="joinSocNum2" placeholder="뒷 7자리">
                </div>
            </div>
            <div class="mb-3 gender-total">
                <label for="inputsubject">성별</label>
                <div class="gender">
                    <div class="gender-male-total">
                        <input type="radio" class="gender-male" id="male" name="gender"><label for="male">남성</label>
                    </div>
                    <div class="gender-female-total">
                        <input type="radio" class="gender-female" id="female" name="gender"><label for="female">여성</label>
                    </div>
                </div>
            </div>
            <div class="col-auto mb-3">
                <label class="" for="inputsubject">이메일</label>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" id="joinEmail1" name="joinEmail1">
                        <select class="form-control" id="joinEmail2" name="joinEmail2">
                            <option disabled selected>▼ 선택해주세요.</option>
                            <option>@naver.com</option>
                            <option>@gmail.com</option>
                            <option>@daum.net</option>
                        </select>
                    <button class="input-group-text btn-add-style btn-outline-secondary">메일 전송</button>
                </div>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" id="joinPhone" name="joinPhone" placeholder='인증번호를 입력해주세요'>
                    <button class="input-group-text btn-add-style btn-outline-secondary">인증 하기</button>
                </div>
            </div>
            
            <div class="col-auto mb-3">
                <label class="" for="inputJoinPhone">휴대전화</label>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" id="joinPhone" name="joinPhone" placeholder='"-"기호를 제외하고 입력해 주세요.'>
                    <button class="input-group-text btn-add-style btn-outline-secondary">번호 인증</button>
                </div>
            </div>
            <div class="col-auto mb-3">
                <label class="" for="inputJoinAddrBasic">기본주소</label>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" id="joinAddrBasic" name="joinAddrBasic">
                    <button class="input-group-text btn-add-style btn-outline-secondary">주소 찾기</button>
                </div>
            </div>
            <div class="mb-3">
                <label for="inputJoinAddrDetail">상세주소</label>
                <input type="text" class="form-control mt-1" id="joinAddrDetail" name="joinAddrDetail">
            </div>
            <div class="mb-3">
                <label for="inputInsName">기관명</label>
                <input type="text" class="form-control mt-1" id="insName" name="insName" placeholder="기관명을 입력해주세요.">
            </div>

            <div class="mb-3">
                <label for="inputInsNum">사업자 번호</label>
                <input type="text" class="form-control mt-1" id="insNum" name="insNum" placeholder='"-"기호를 제외하고 입력해주세요.'>
            </div>
            <div class="col-auto mb-3">
                <label class="" for="inputInsAddrBasic">기관 주소</label>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" id="insAddrBasic" name="insAddrBasic">
                    <button class="input-group-text btn-add-style btn-outline-secondary">주소 찾기</button>
                </div>
            </div>
            <div class="mb-3">
                <label for="inputInsAddrDetail">기관 상세 주소</label>
                <input type="text" class="form-control mt-1" id="insAddrDetail" name="insAddrDetail">
            </div>
            
            <div class="row">
                <div class="col mt-2 join-btn">
                    <button type="submit" class="btn btn-outline-secondary btn-lg px-3">가입</button>
                </div>
                <div class="col mt-2 cencel-btn">
                    <button type="submit" class="btn btn-outline-secondary btn-lg px-3">취소</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- End 회원가입 (기관) -->


<%@ include file="../include/footer1.jsp"%>



</body>
</html>