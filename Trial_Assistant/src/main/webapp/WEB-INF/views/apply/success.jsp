<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조력자 신청 완료</title>

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
    .titlefoot {
        text-align: center;
        margin: 70px auto;
    }

    #infor-btn {
        color: white;
    }

    #apply-whether {
        font-weight: bold;
    }

    .info-essen {
        font-size: 80%;
        color: red;
    }

    .info-check {
        display: inline-block;
        width: 20px;
        height: 15px;
        border: 2px solid #bcbcbc;
        cursor: pointer;
    }

    .info-ag {
        font-weight: bold;
        float: right;
    }

    #info-text {
        resize: none;
    }

    .apply-result {
        margin: 0 auto;
        text-align: center;
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

    .titlefoot {
            text-align: center;
            margin: 70px auto;
        }

</style>

<body>

<jsp:include page="../include/header.jsp" />

<!-- Start Content -->

	<form action="apply/success">
	    <div class="container py-5">
	        <div class="row">
	
	            <div class="container py-5">
	                <div class="row">
	        
	                    <div class="container-fluid py-3">
	                        <div class="col-md-7"></div>
	                    </div>
	                </div>
	            </div>
	            
	            <h1 class="apply-result">신청이 완료 되었습니다.</h1>
	
	</form>
    <!-- End Content -->

    

    <!-- Start Brands -->
    <section class="py-5">
        <div class="container my-4">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">

                </div>
                                
                    
                            </div>

                            <div class="titlefoot col mt-2">
                                <button type="submit" class="btn btn-secondary btn-lg px-3" id="infor-btn">메인 메뉴로 가기</button>
                            </div>

                                
                            </div>

                            
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