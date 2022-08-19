<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title> 회원가입 개인/기관 선택 페이지 </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="${pageContext.request.contextPath }/resources/images/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/images/favicon.ico">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/templatemo.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->

<style>

  



.title-join{
    text-align: center;
    justify-content: center;
    margin: 0 auto 100px;
    font-size: 30px !important;
    border:1px solid lightgray;
    border-radius: 40px;
    width: 200px;
    background-color: rgb(228, 227, 227);
    color: rgb(132, 127, 127);
    font-weight: 500 !important;
}

.gender-male-total{
    float: left;
    margin-right: 120px;
}
.gender-male, .gender-female{
    margin-right: 10px;
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


/* Start joinSelect.css */
.person-check{
    max-width: 600px;
    min-width: 400px;
}
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
    margin: 50px 0;
}
/* End joinSelect.html의 css */

</style>




</head>
<body>

	<jsp:include page="../include/header.jsp" /> 

  <!--Start 회원가입1 개인/기관 선택 페이지 -->
        <div class="container py-5">
            
                <form class="m-auto" method="post" role="form">
    
                    <div class="title-join">개인/기관 선택</div>
    
                    <div class="person-check m-auto">
                        <div class="person-o-total">
                            <input type="radio" class="person-o" id="person-o" name="person-check"><label for="person-o">개인</label>
                        </div>
                        <div class="person-x-total">
                            <input type="radio" class="person-x" id="person-x" name="person-check"><label for="person-x">기관</label>
                        </div>
                    </div>
        
                    
                    <div class="row next-btn-box">
                        <div class="col mt-2 next-btn">
                            <button type="submit" class="btn btn-outline-secondary btn-lg px-3">다음</button>
                        </div>
                    </div>
                </form>
            
        </div>
        <!-- End 회원가입1 개인/기관 선택 페이지 -->

	<%@ include file="../include/footer1.jsp"%>



</body>
</html>