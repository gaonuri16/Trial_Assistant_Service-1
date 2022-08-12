<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> 마이페이지 FAQ 상세 페이지  </title>
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


    .title-box{
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
    
    
    button:hover{
        cursor: pointer;
    }
    .btn-box{
        margin-top: 50px;
        width: 100%;
        text-align: center;
    }
    
    .modif-btn{
        margin: 0 50px;
        box-sizing: border-box;
        display: inline-block;
    }
    .cencel-btn{
        margin: 0 50px;
        box-sizing: border-box;
        display: inline-block;
    }
    
    .total-box{
        border: 1px solid rgb(189, 186, 186);
        border-radius: 20px;
        width: 80%;
        margin: 0 auto;
        padding: 20px 0;
    }
    
    .box1{
        border-radius: 20px;
        background-color: #EFEFEF;
        color: #676767;
        width: 25%;
        height: 40px;
        line-height: 40px;
        margin-left: 10%;
        margin-right: 10%;
        float: left;
        text-align: center;
    }
    .box2{
        color: #676767;
        width: 75%;
        height: 40px;
        line-height: 40px;
        margin-left: 5%;
    }
    .boxbox{
        display: flex;
        margin: 5% auto;
    }






    .announcement-search {
        width: 40%;
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

.notice-modi-btn{
    margin-right: 20px;
}

.input-group-text{
    width: 100px;
    display: flex;
    justify-content : center;
}

/* 여기서부터 추가 */
.form-total{
    padding-top: 50px;
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

.faq-detail-box{
  margin-bottom: 80px;
}
    
textarea{
    resize: none;
}


    </style>
</head>
<body>
	<jsp:include page="../include/header.jsp" /> 

    <!-- Start 사이드 바 -->
    <div class="container py-5">
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
            <!-- End 사이드 바-->

            <!-- Start 마이페이지 faq detail -->
            
            <section class="col-lg-9">
                    
                <h4 class="title-box">FAQ 상세보기</h4>
                  
                <div class="faq-detail-box">
                    <div>
                        <div>
                            <div class="input-group mb-3">
                                <span class="input-group-text notice-regist-title">제목 </span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
                            </div>   
    
                            <div class="input-group mb-3">
                                <span class="input-group-text notice-regist-title">작성자</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                                <span class="input-group-text">작성일</span>
                                <input type="text" aria-label="First name" class="form-control">
    
                                <span class="input-group-text">조회</span>
                                <input type="text" aria-label="Last name" class="form-control">
                                
                            </div>   
    
                            <div class="input-group mb-3">
                                <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                                <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">등록</button>
                            </div>
    
                            <div class="notice-regi-text">
                                <textarea class="form-control" placeholder="FAQ 내용 입력" id="floatingTextarea" style="height: 500px"></textarea>
                            </div>
                        </div>
                        
                    </div>
    
                    <!-- faq를 작성한 사용자만(아이디로 비교) 수정버튼 활성화 -->
                    <div class="notice-regi-btn">
                        <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">수정</button>
                    </div>
    
                </div>


                <!-- 관리자만 작성 가능  -->
                <div class="table-box col-lg second-section" >
                    <div  class="more-view" id ="notice_title">
                        <h4 class="title-box notice-regi-title" >답변 상세보기</h4>
                    </div>


                    <div>
                        <div>
                            <div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text notice-regist-title">&nbsp &nbsp &nbsp &nbsp 제목 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</span>
                                    <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
                                </div>   

                                <div class="input-group mb-3">
                                    <span class="input-group-text notice-regist-title">&nbsp &nbsp &nbsp &nbsp 작성자&nbsp &nbsp &nbsp &nbsp &nbsp</span>
                                    <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">

                                    <span class="input-group-text">작성일</span>
                                    <input type="text" aria-label="First name" class="form-control">

                                    <span class="input-group-text">조회</span>
                                    <input type="text" aria-label="Last name" class="form-control">
                                    
                                </div>   

                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                                    <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">등록</button>
                                </div>

                                <div class="notice-regi-text">
                                    <textarea class="form-control" placeholder="답변 내용 입력" id="floatingTextarea" style="height: 500px"></textarea>
                                </div>
                            </div>
                            
                        </div>

                        <div class="notice-regi-btn">
                            <button class="btn btn-outline-secondary notice-modi-btn" type="button">답변등록</button>

                            <button class="btn btn-outline-secondary" type="button">수정</button>
                        </div>

                    </div>

                </div>



            </section>           
              
        </div>
    </div>
    <!-- End Content -->


<%@ include file="../include/footer1.jsp"%>



</body>
</html>