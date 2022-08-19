<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 조력자 기본정보 입력</title>

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

    #aca-back {
        resize: none;
    }
    #carrer {
        resize: none;
    }

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

    .titlefoot {
        text-align: center;
        margin: 70px auto;
    }

    #gene-num-msg {
        font-size: 70%;
        color: red;
    }

    #hp-ge-radio{
        float: left;
        margin-left: 60px;
        padding-right: 30px;
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

	<div class="container py-5">
        <div class="row">
            <div class="container-fluid py-3">
                <section class="container py-5">
                    <div class="gh-info-regist">
                      <h1>일반 조력자 기본 정보 입력</h1>
                      <hr>
                    </div>
                </section>

                    <form class="col-md-9 m-auto" action="<c:url value='/apply/registForm' />" name="registForm" method="post">
                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputname">이름</label>
                                <input type="text" class="form-control mt-1" name="ghName">
                                <span id="gene-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputsocnum">주민등록번호</label>
                                <input type="text" class="form-control mt-1" name="ghSocNum">
                                <span id="gene-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>

                        <p></p>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputhomephonenum">집 전화번호</label>
                                <input type="tel" class="form-control mt-1" name="ghHomeNum">
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputphonenum">휴대폰 번호</label>
                                <input type="tel" class="form-control mt-1" name="ghPhoneNum">
                                <span id="gene-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>

                        <p></p>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputjob">직업</label>
                                <input type="text" class="form-control mt-1" name="ghJob">
                                <span id="gene-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputemail">이메일</label>
                                <input type="email" class="form-control mt-1" name="ghEmail">
                                <span id="gene-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>

                        <p></p>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputhelyear">조력자 연도</label>
                                <input type="text" class="form-control mt-1" id="hel-year" name="hel-year">
                            </div>

                            <div class="form-group col-md-6 mb-3">
                                <label for="inputhel-srttn">조력자 구분</label><span id="gene-num-msg"> *필수 사항입니다.</span><!--자바스크립트에서 추가-->

                                <p></p>

                                <div id="hp-ge-radio">
                                    문서<input type="radio" name="ghSrttn" id="document" value="document">
                                </div>
                                <div id="hp-ge-radio">
                                    측량<input type="radio" name="ghSrttn" id="survey" value="survey">
                                </div>
                                <div id="hp-ge-radio">
                                    경매<input type="radio" name="ghSrttn" id="auction" value="auction">
                                 </div>

                                    <!-- <select name="ghSrttn" id="ge-srttn">
                                        <option>조력자 구분을 선택하세요<option>
                                        <option>문서</option>
                                        <option>측량</option>
                                        <option>경매</option>
                                    </select> -->
                            </div>
                        </div>

                        <p></p>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputbsnsnum">사업자 번호</label>
                                <input type="text" class="form-control mt-1" name="ghBsnsNum">
                                <span id="gene-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputfax">팩스</label>
                                <input type="text" class="form-control mt-1" name="ghFax">
                            </div>
                        </div>

                        <p></p>

                        <div class="row">   
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputofcname">사무소명</label>
                                <input type="text" class="form-control mt-1" name="ghOfcName">
                                <span id="gene-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputofcnum">사무소 번호</label>
                                <input type="text" class="form-control mt-1" name="ghOfcNum">
                                <span id="gene-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>
                        
                        <p></p>

                        <div class="mb-3">
                            <label for="inputacaback">학력</label><span id="">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            <textarea class="form-control mt-1" id="aca-back" name="ghAcadBack" rows="10"></textarea>
                            <input type="file" class="form-control" aria-describedby="inputGroupFileAddon04" aria-label="Upload">

                            <br>
                            <br>

                            <div class="mb-3">
                                <label for="inputcarrer">경력</label><span id="">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                                <textarea class="form-control mt-1" id="carrer" name="ghCarrer" rows="10"></textarea>
                               <input type="file" class="form-control" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                            </div>
                        </div>

                        <br>
                        <br>

                        <div class="row">
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputbank">입금 은행</label>
                                <input type="text" class="form-control mt-1" id="bank" name="ghBank">
                                <span id="">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="inputacchol">예금주</label>
                                <input type="text" class="form-control mt-1" id="acc-hol" name="ghAccHol">
                                <span id="">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>

                            <div class="form-group col-md-6 mb-3">
                                <label for="inputbanknum">계좌번호</label>
                                <input type="text" class="form-control mt-1" id="acc-hol" name="ghBankNum">
                                <span id="">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                            </div>
                        </div>

                        <br>
                        <br>
                        
                        <div class="form-group">
	                            <label for="addr-num">주소</label> <span id="">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
	                        <div class="input-group">
	                            <input type="text" name="ghPostNum" class="form-control" id="ghPostNum" placeholder="우편번호" readonly>
	                            <div class="input-group-addon">
	                                <button type="button" class="btn btn-success" onclick="searchAddress()">주소찾기</button>
	                            </div>
	                    	</div>
	                    </div>
	                        
	                        <input type="text" name="ghAddr" class="form-control" id="ghAddr" placeholder="기본주소">
                            <input type="text" name="ghDtlAddr" class="form-control" id="ghDtlAddr" placeholder="상세주소">
                            <span id="gene-num-msg">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                        
                        <p></p>
                        <p></p>
                        

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
                <div class="col-lg-6 m-auto">

                </div>
                                
                    
                            </div>

                            <div class="titlefoot col mt-2">
                                <button type="submit" class="btn btn-secondary btn-lg px-3 gh-btn" id="prevBtn">이전</button>
                                <button type="button" class="btn btn-secondary btn-lg px-3 gh-btn" id="nextBtn">다음</button>
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


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>

    	$(function() {
			$('#nextBtn').click(function() {
				if($('input[name=ghName]').val() === '') {
					alert('이름은 필수 항목입니다.');
					$('input[name=ghName]').focus();
					return;
					
				} else if($('input[name=ghSocNum]').val() === '') {
					alert('주민등록번호는 필수입니다.');
					$('input[name=ghSocNum]').focus();
					return;
					
				} else if($('input[name=ghPhoneNum]').val() === '') {
					alert('휴대폰 번호는 필수입니다.');
					$('input[name=ghPhoneNum]').focus();
					return;
					
				} else if($('input[name=ghJob]').val() === '') {
					alert('직업은 필수 항목입니다.');
					$('input[name=ghJob]').focus();
					return;
					
				} else if($('input[name=ghEmail]').val() === '') {
					alert('이메일은 필수 항목입니다.');
					$('input[name=ghEmail]').focus();
					return;
					
				} else if($("input[name=ghSrttn]:checked").length < 1){
					alert("조력자 구분을 선택해주세요.");	
					
				} else if($('input[name=ghBsnsNum]').val() === '') {
					alert('사업자 번호는 필수 항목입니다.');
					$('input[name=ghBsnsNum]').focus();
					return;
					
				} else if($('input[name=ghOfcName]').val() === '') {
					alert('사무소명은 필수 항목입니다.');
					$('input[name=ghOfcName]').focus();
					return;
					
				} else if($('input[name=ghOfcNum]').val() === '') {
					alert('사무소 번호는 필수 항목입니다.');
					$('input[name=ghOfcNum]').focus();
					return;
					
				} else if($('textarea[name=ghAcadBack]').val() === '') {
					alert('학력은 필수 항목입니다.');
					$('textarea[name=ghAcadBack]').focus();
					return;
					
				} else if($('textarea[name=ghCarrer]').val() === '') {
					alert('경력은 필수 항목입니다.');
					$('textarea[name=ghCarrer]').focus();
					return;
					
				} else if($('input[name=ghBank]').val() === '') {
					alert('입금은행은 필수 항목입니다.');
					$('input[name=ghBank]').focus();
					return;
					
				} else if($('input[name=ghAccHol]').val() === '') {
					alert('예금주는 필수 항목입니다.');
					$('input[name=ghAccHol]').focus();
					return;
					
				} else if($('input[name=ghBankNum]').val() === '') {
					alert('계좌번호는 필수 항목입니다.');
					$('input[name=ghBankNum]').focus();
					return;
					
				} else if($('input[name=ghAddr]').val() === '') {
					alert('주소는 필수 항목입니다.');
					$('input[name=ghAddr]').focus();
					return;
				
				} else {
					document.registForm.submit();
				}
			});
			
			/* $('#nextBtn').click(function() {
				if(confirm('등록 하시겠습니까?')) {
					location.href='<c:url value="/apply/success" />'
				} else return;
			}) */

		});
    	
    	/* document.getElementById('nextBtn').onclick = function() {
    	    var radios = document.getElementsById('ghSrttn');
    	    for (var radio of radios)
    	    {
    	        if (radio.checked) {
    	            alert(radio.value);
    	        }
    	    }
    	} */
    	
    	
    	function searchAddress() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }	                
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('ghPostNum').value = data.zonecode;
	                document.getElementById("ghAddr").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("ghDtlAddr").focus();
	            }
	        }).open();
	    }
    	
</script>



































