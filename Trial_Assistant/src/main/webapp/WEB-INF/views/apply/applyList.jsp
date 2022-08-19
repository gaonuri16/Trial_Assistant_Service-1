<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조력자 신청</title>

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

	.btn-success {
		margin-top: 15px;
	}
        
	.content-row{
		display: flex;
		justify-content: center;
	}

	.board-table{
		width: 100%;
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

</style>
    
    
<body>

	<jsp:include page="../include/header.jsp" />

    <!-- 조력자 공고 신청 배너 -->
    <form class="form-total">
        <div class="container py-5">
            <div class="row">
                <div class="container-fluid py-3">
                    <section class="container py-5">
                        <div>
                            <h1 id="apply-benner">조력자 신청하기</h1><hr width="1250">
                        </div>
                    </section>
                </div>

                <!-- 공고 테이블 -->
                <div class="container-fluid" id="applyList">
                    <div class="content-row">
                        <!--lg에서 9그리드, xs에서 전체그리드-->   
                        <div class="col-lg-9 col-xs-12 board-table">
                            <div class="titlebox"></div>
                                <table class="table table-striped">
                                    <thead>
                                        <tr align="center">
                                            <th>번호</th>
                                            <th class="board-title">년도</th>
                                            <th>차수</th>
                                            <th>제목</th>
                                            <th>공고 기간</th>
                                            <th>조력자 구분</th>
                                            <th></th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr align="center">
                                            <td>
                                                &nbsp;&nbsp;&nbsp;
                                                <p>1</p>
                                            </td>

                                            <td>
                                                &nbsp;&nbsp;&nbsp;
                                                <p>2022</p>
                                            </td>

                                            <td>
                                                &nbsp;&nbsp;&nbsp;
                                                <p>2차</p>
                                            </td>
            
                                            <td>
                                                &nbsp;&nbsp;&nbsp;
                                                <p>통번역인 조력자 선발</p>
                                            </td>
            
                                            <td>
                                                &nbsp;&nbsp;&nbsp;
                                                <p>2022-03-15 ~ 2022-09-02</p>
                                            </td>
            
                                            <td>
                                                &nbsp;&nbsp;&nbsp;
                                                <p>통번역인</p>
                                            </td>
            
                                            <td>
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col text-center">
                                                            <button class="btn btn-success">신청하기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
            
                                            <tr align="center">
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <p>2</p>
                                                </td>

                                                <td>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <p>2022</p>
                                                </td>

                                                <td>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <p>2차</p>
                                                </td>
                
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <p>일반 조력자 선발</p>
                                                </td>
                
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <p>2022-03-15 ~ 2022-09-02</p>
                                                </td>
                
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <p>일반 조력자</p>
                                                </td>
                
                                                <td>
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col text-center">
                                                                <button class="btn btn-success">신청하기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
            
                                                <tr align="center">
                                                    <td>
                                                         &nbsp;&nbsp;&nbsp;
                                                        <p>3</p>
                                                    </td>

                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <p>2022</p>
                                                    </td>

                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <p>2차</p>
                                                    </td>
                    
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <p>기관 추천 조력자 선발</p>
                                                    </td>
                    
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <p>2022-03-15 ~ 2022-09-02</p>
                                                    </td>
                    
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <p>기관 추천 조력자</p>
                                                    </td>
                    
                                                    <td>
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col text-center">
                                                                    <button class="btn btn-success">신청하기</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tr>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form> 
        
        <!-- Start Brands -->
        <section class="py-5">
            <div class="container my-4">
                <div class="row text-center py-3"></div>
            </div>
        </section>
        <!--End Brands-->
        
        <%@ include file="../include/footer1.jsp"%>

</body>
</html>