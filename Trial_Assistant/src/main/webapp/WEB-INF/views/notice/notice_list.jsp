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
      #notice_hit {
        text-align: left !important;
      }
      #middle-sect {
        padding-top: 100px;
        padding-bottom: 100px;
      }
      .announcement-search {
        width: 37%;
        display: flex;
        justify-content: center;
      }
      .announcement-search input {
        width: 75%;
        border-radius: 5px;
        padding: 3px 9px;
        border: 1px solid #d6d6d6;
      }
      #announcement-search-btn {
        border-radius: 5px;
        border: 1px solid black;
        font-size: 15px;
        padding: 7px 9px;
        background: white;
        color: black;
        width: 70px;
      }
      .btn-page {
        width: 80%;
        font-size: 10px;
        padding: 0, 0%;
      }
      .andBtns {
        width: 100%;
        display: flex;
        justify-content: space-between;
      }
      .paging-btns {
        margin: 0 auto;
      }
      .sec-list{
        padding: 10% !important;
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
    width: 50%;
    font-size: 20px;
}
/* 검색 버튼  */
.search-btn{
  display: flex;
  justify-content: center;
  margin: 0%;
}
.announcement-search {
        width: 420px;
        margin-bottom: 10px;
        float: right;
        justify-content: center;
      }
      .announcement-search-input {
        margin-right: 0 !important;
        border-radius: 5px;
        padding: 3px 9px;
        border: 1px solid #d6d6d6;
      }
      #announcement-search-btn {
        border-radius: 5px;
        border: 1px solid black;
        font-size: 15px;
        padding: 7px 9px;
        background: white;
        color: black;
        width: 70px;
      }
      .total{
        padding-bottom: 100px;
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
    
/* 제목을 클릭했을 때 a링크 스타일 없앰  */
.link-a-style{
	text-decoration:none;
	color:black;
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
      <section class = "py-3 total-sec ">
      <div class="table-box col-lg second-section">
        <div class="more-view title-box" id="notice_title">

          <div class="announcement-detail-title">
            <h3>공지사항</h3>
        </div>

          <div class="announcement-search dropup">
            <button
              type="button"
              id="title-btn"
              class="btn btn-secondary dropdown-toggle"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              제목
            </button>
            <ul class="dropdown-menu">
              <li>작성자</li>
              <li>내용</li>
              <li>제목</li>
            </ul>
            <input type="text" placeholder="검색할 제목을 입력하세요..." />
            <button id="announcement-search-btn">검색</button>
          </div>
        </div>

        <table class="announcement-table table table-hover">
          <thead style="background-color: #e9ecef; border-top:3px solid ">
	          <tr>
	            <th scope="col">번호</th>
	            <th scope="col">제목</th>
	            <th scope="col">작성자</th>
	            <th scope="col">작성일</th>
	            <th scope="col">조회수</th>
	          </tr>
          </thead>

          <tbody style="border-top : 3px solid #e9ecef">
          
          	<c:forEach var="notice" items="${noticeList }">
          		<tr>
	              <td>${notice.noticeNum}</td>
	              <td>
	              	<a href="<c:url value='/notice/content/${notice.noticeNum }' />" class="link-a-style">${notice.noticeTitle }</a>
	              </td>
	              <td>${notice.noticeWriter }</td>
	              <td><fmt:formatDate value="${notice.noticeDate}" pattern="yyyy-MM-dd"/></td>
	              <!-- Javascript를 사용해서 날짜 입력받거나  -->
	              <td id="notice_hit">${notice.noticeHits }</td>
	            </tr>
          	</c:forEach>
            
            
          </tbody>
        </table>

        <div class="andBtns">
          <div class="paging-btns">
            <button type="button" class="btn btn-outline-secondary">◀</button>
            <button type="button" class="btn btn-outline-secondary">1</button>
            <button type="button" class="btn btn-outline-secondary">2</button>
            <button type="button" class="btn btn-outline-secondary">3</button>
            <button type="button" class="btn btn-outline-secondary">4</button>
            <button type="button" class="btn btn-outline-secondary">▶</button>
          </div>
                   
          <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">등록</button>
          
        </div> 
        
        <%-- <div class="andBtns">
          <div class="paging-btns" id="pagenation">
          	<c:if test="${pct.prev }"> 
            	<button type="button" class="btn btn-outline-secondary" data-pagenum="${pct.beginPage-1 }" >◀</button>
            </c:if>
            
            <c:forEach var="page" begin="${pct.beginPage }" end="${pct.endPage }">
            
            	<button type="button" class="btn btn-outline-secondary" data-pagenum="${page } ">${page }</button>
            
            </c:forEach>
			
			<c:if test="${pct.next }">
			
				<button type="button" class="btn btn-outline-secondary" data-pagenum="${pct.endPage+1 }">▶</button>
				
			</c:if>
          </div>
          <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">등록</button>
        </div> --%>



      </div>
    </section>
    
    <input type="hidden" name="pageNum" value="${pct.paging.pageNum }">
        <input type="hidden" name="cpp" value="${pct.paging.cpp }">
        <input type="hidden" name="condition" value="${pct.paging.condition }">
		<input type="hidden" name="keyword" value="${pct.paging.keyword }">
    </form>
    </div>


	<%@ include file="../include/footer1.jsp"%>



</body>

<script>
		$(function(){
			$('#inputGroupFileAddon04').click(function(){
				console.log('등록 버튼 클릭 ');
				
				
				if(confirm('공지사항을 등록하시겠습니까? ')){
					location.href = '<c:url value = "/notice/write" />';
				}
				else{
					return 
				}
			});			
		});
</script>
</html>