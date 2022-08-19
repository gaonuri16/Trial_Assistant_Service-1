<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통번역인 기본정보 입력</title>

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
	
</head>

<style>

    /* 학력, 경력 textarea */
    #aca-back {
        resize: none;
    }
    #carrer {
        resize: none;
    }

    /* 파일 첨부하기 */
    #inputGroupFile04 {
        width: 50%;
        float: right;
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

    /* 다음, 이전 버튼 */
    .titlefoot {
        text-align: center;
        margin: 70px auto;
    }

    /* 필수 사항 */
    #trans-num-msg {
        font-size: 80%;
        color: red;
    }
    
    #result-alarm {
        display: inline-block;
        width: 20px;
        height: 15px;
        border: 2px solid #bcbcbc;
        cursor: pointer;
    }

</style>

<body>

<jsp:include page="../include/header.jsp" />

<!-- Start Content -->
    <div class="container py-5">
        <div class="row">
            <div class="container-fluid py-3">
                <section class="container py-5">
                    <div class="announcement-detail-title">
                      <h1>통번역인 기본 정보 입력</h1>
                      <hr>
                    </div>
                </section>

                    <br>
                    <br>

                <div class="total-box">

                    <form class="col-md-9 m-auto" method="post" role="form" id="ge-info">
                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputname">이름</label>
                                <input type="text" class="form-control mt-1" id="name" name="name">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputsocnum">주민등록번호</label>
                                <input type="text" class="form-control mt-1" id="soc-num" name="soc-num">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>

                        <p></p>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputhomephonenum">집 전화번호</label>
                                <input type="tel" class="form-control mt-1" id="home-phone-num" name="home-phone">
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputphonenum">휴대폰 번호</label>
                                <input type="tel" class="form-control mt-1" id="phone-num" name="phone">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>

                        <p></p>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputjob">직업</label>
                                <input type="text" class="form-control mt-1" id="job" name="job">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputemail">이메일</label>
                                <input type="email" class="form-control mt-1" id="email" name="email">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                        </div>

                        <p></p>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputhelyear">전문 분야</label>
                                <input type="text" class="form-control mt-1" id="hel-year" name="hel-year">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputhel-srttn">언어</label>
                                <input type="text" class="form-control mt-1" id="hel-srttn" name="hel-srttn">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>

                        <p></p>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputbsnsnum">지정 법원</label>
                                <input type="text" class="form-control mt-1" id="bsns-num" name="bsns-num">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputfax">활동 가능 지역</label>
                                <input type="text" class="form-control mt-1" id="fax" name="fax">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>
                        
                        <p></p>

                        <div class="mb-3">
                            <label for="inputacaback">학력</label>
                            <textarea class="form-control mt-1" id="aca-back" name="aca-back" rows="10"></textarea>
                            <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                            <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->

                            <br>
                            <br>

                            <div class="mb-3">
                                <label for="inputcarrer">경력</label>
                                <textarea class="form-control mt-1" id="carrer" name="carrer" rows="10"></textarea>
                               <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                               <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                        </div>

                        <br>
                        <br>
                        <br>
                        <br>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputbank">입금 은행</label>
                                <input type="text" class="form-control mt-1" id="bank" name="bank">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputacchol">예금주</label>
                                <input type="text" class="form-control mt-1" id="acc-hol" name="acc-hol">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>

                            <div class="form-group col-md-6 mb-3">
                                <label for="inputbanknum">계좌번호</label>
                                <input type="text" class="form-control mt-1" id="acc-hol" name="acc-hol">
                                <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>

                        <br>
                        <br>
                        
                        <div class="form-group">
                            <label for="addr-num">주소</label>
                            <div class="input-group">
                                <input type="text" name="addrZipNum" class="form-control" id="addrZipNum" placeholder="우편번호" readonly>
                                <div class="input-group-addon">
                                    <button type="button" class="btn btn-success">주소찾기</button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" name="addr" class="form-control" id="addr" placeholder="기본주소">
                        </div>
                        <div class="form-group">
                            <input type="text" name="dtladdr" class="form-control" id="dtladdr" placeholder="상세주소">
                            <span id="trans-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                        </div>

                        <br>
                        <br>

                        <div class="form-group">
                            <label for="hp-result-alram">신청 진행 및 결과 알림</label>
                            <div id="hp-result-alram">
                                <div>
                                    SMS <input type="checkbox" id="result-alarm">
                                </div>
                                <div>
                                    전화 <input type="checkbox" id="result-alarm">
                                </div>
                                <div>
                                    이메일 <input type="checkbox" id="result-alarm">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- End Content -->
        


    

    <!-- Start Brands -->
    <section class="py-5">
        <div class="container my-4">
            <div class="row text-center py-3">

                <div class="titlefoot col mt-2">
                    <button type="submit" class="btn btn-secondary btn-lg px-3" id="infor-btn">이전</button>
                    <button type="button" class="btn btn-secondary btn-lg px-3" id="infor-btn">다음</button>
                </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Brands-->
    
    <%@ include file="../include/footer1.jsp"%>

</body>
</html>