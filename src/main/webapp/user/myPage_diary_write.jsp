<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>일기쓰기</title>
</head>
<style>
/* 폰트 */
@font-face {
	font-family: '양진체';
	src:
		url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'LeferiPoint-WhiteObliqueA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/LeferiPoint-WhiteObliqueA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
    font-family: 'LeferiPoint-WhiteA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/LeferiPoint-WhiteA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
/* 폰트 끝 */
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.container {
	margin: auto;
}

/* 헤더 */
.cls_header {
	height: 150px;
	width: 100%;
	margin: 0%;
	background-color: #BFFFF0;
	color: #97C4B8;
	align-items: center;
	font-family: '양진체';
	text-align: center;
}

.cls_header a {
	color: #97C4B8;
}

.cls_header a:hover {
	color: #c9d4a9;
}

.dropdownBtn {
	background-color: #F0FFC2 !important;
	color: #97C4B8;
	border: 1px solid white;
}

.dropdownBtn:hover {
	color: #9be5d2;
}

.headDropdown {
	background-color: #F0FFC2 !important;
}

.headMenu {
	justify-content: end;
}

/* 로고 */
.logoImg {
	padding: 0%;
	filter: invert(87%) sepia(8%) saturate(806%) hue-rotate(113deg)
		brightness(86%) contrast(86%);
}

.logoImg:hover {
	filter: invert(75%) sepia(12%) saturate(803%) hue-rotate(52deg)
		brightness(99%) contrast(80%);
}
/* 로고 이미지 사이즈 */
.logoImg #logoImg {
	width: 50%;
	height: 50%;
}
/* 로고 효과 */
@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap');
    .logoImg {
        position: relative;
        display: inline-block;
        color: #fff;
        text-transform: uppercase;
        animation: waviy 1s infinite;
        animation-delay: calc(.1s * var(--i));
    }
    @keyframes waviy {
        0%,
        40%,
        100% {
            transform: translateY(0)
        }
        20% {
            transform: translateY(-20px)
        }
    }
/* 로고 효과 끝 */
/* 네비바 */
.navbar {
	background-color: #F0FFC2 !important;
	font-family: '양진체';
}

.container-fluid a {
	color: #97C4B8 !important;
}

.container-fluid a:hover {
	color: #9be5d2 !important;
}

.container-fluid button {
	background-color: #F0FFC2 !important;
	color: #97C4B8 !important;
}

.navDropdown {
	border: 1px solid white;
	background-color: #d5fcf3 !important;
}

.container-fluid button:hover {
	background-color: #97C4B8 !important;
	color: #F0FFC2 !important;
}

.container-fluid span {
	filter: invert(40%) sepia(4%) saturate(3907%) hue-rotate(113deg)
		brightness(103%) contrast(66%);
}

.navSearchInput {
	border: 1px solid white;
}

.navSearchInput::placeholder {
	color: #FFE4C0;
}

/* 공백 */
.empty {
	background-color: white;
	height: 80px;
}

/* 바디 */
.title {
	border-bottom: 2px solid #97C4B8;
	width: 250px;
}

.title h3 {
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}

.cls_body{
	font-family: 'LeferiPoint-WhiteA';
	font-weight: 600;
}

.inner-container-left {
	margin: auto;
	border: 1px solid #F0FFC2;
	box-sizing: border-box;
	height: 100%;
	background-color: #F0FFC2;
}

.inner-container-left * {
	margin: 20px;
	font-weight: 600;
	color: #80bdb7;
}

.contentsBox {
	border: 2px solid #e5f7c9;
	background-color: #F0FFC2;
	width: 600px;
	height: 610px;
	border-radius: 0.25rem;
	color: grey;
	padding-top: 20px;
}

select, select> *{
	border: 1px solid #97C4B8;
	height: 26px;
	font-weight: 600;
	border-radius: 0.25rem;
}

select:focus {
	outline: none;
}

.textBox {
	border: 1px solid #97C4B8;
	width: 90%;
	height: 400px;
	margin-left: 24px;
	font-weight: 600;
	border-radius: 0.25rem;
	padding: 15px;
}

.textBox:focus, input:focus {
	outline: none;
}

.textBox::placeholder{
	color: #adcabf;
}

input{
	border: 1px solid #97C4B8;
	border-radius: 0.25rem;
	font-weight: 600;
	text-align: center;
}

.labels{
	display: inline;
	margin-bottom: 5px;
}

select{
	margin-left: 30px;
}


/* 버튼 */
.btnSpace {
	margin-bottom: 80px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
	justify-content: center;
}

#writeBtn, #backBtn {
	background-color: #73b1a1;
	border: 1px solid #F0FFC2;
	border-radius: 50rem;
	padding: 3px;
	padding-top: 10px;
	padding-left: 10px;
	padding-right: 10px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	color: white;
	margin: 5px;
}

#writeBtn:hover, #backBtn:hover {
	background-color: #F0FFC2;
	border: 1px solid #73b1a1;
	color: #73b1a1;
}

/* footer */
.footer {
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
	font-size: small;
	color: #709c91;
	border-top: 1px solid #c9d4a9;
}

.footer .row {
	border-bottom: 1px solid #c9d4a9;
}

.footer .footerInfo {
	padding-block: 3%;
	text-align: center;
}

.footerMenu {
	padding-block: 2%;
	text-align: center;
}

.footerMenu a {
	color: #709c91;
	text-decoration: none;
}
/* footer 끝 */
</style>

<body>
	<div class="container">
		<!-- 헤더 -->
	<div class="row cls_header">
			<div class="col-3 logoImg">
				<a href="/home"> <img id="logoImg" src="../imgs/dpt_Logo.png">
				</a>
			</div>
			<c:choose>
				<c:when
					test="${loginSession.user_auth eq 'member' || loginSession.user_auth eq 'admin'}">
					<div class="d-none d-md-block col-2"></div>
					<div class="col-3 p-0 headMenu d-flex justify-content-center">
						<span>${loginSession.user_name} 님 환영합니다!</span>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toMypage.user" style="text-decoration: none;"> <span>마이페이지</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/logout.user" style="text-decoration: none;"> <span>로그아웃</span>
						</a>
					</div>
				</c:when>
				<c:when test="${loginSession.user_auth eq 'manager'}">
					<div class="d-none d-md-block col-2"></div>
					<div class="col-3 p-0 headMenu d-flex justify-content-center">
						<span>관리자님 환영합니다!</span>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toSendmail.manager" style="text-decoration: none;">
							<span>메일보내기</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/userSerch.manager?curPage=1"
							style="text-decoration: none;"> <span>회원 검색</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/logout.user" style="text-decoration: none;"> <span>로그아웃</span>
						</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="d-none d-md-block col-5"></div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/login.user" style="text-decoration: none;"> <span>로그인</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toSignup.user" style="text-decoration: none;"> <span>회원가입</span>
						</a>
					</div>
				</c:otherwise>
			</c:choose>
			<div class="col p-0 headMenu d-flex justify-content-center">
				<button type="button" class="btn dropdownBtn dropdown-toggle"
					data-bs-toggle="dropdown" aria-expanded="false">고객센터</button>
				<ul class="dropdown-menu headDropdown">
					<li><a class="dropdown-item" href="/toInformation.info">자주
							묻는 질문</a></li>
					<c:if test="${loginSession.user_auth eq 'manager'}">
						<li><a class="dropdown-item"
							href="/modifyList.food?curPage=1">음식 프로로션</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<!-- 헤더 끝 -->
		<!-- 네비 -->
		<div class="row cls_nav">
			<div class="col">
				<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
					<div class="container-fluid">
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="/toColumnPage.column?curPage=1">칼럼</a></li>
								<c:choose>
									<c:when
										test="${loginSession.user_auth eq 'member' || loginSession.user_auth eq 'admin' || loginSession.user_auth eq 'manager'}">
										<li class="nav-item"><a class="nav-link"
											href="/listLogin.gym">내 주변 운동시설</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/listLogin.food">특가 식품</a></li>
									</c:when>
									<c:otherwise>
										<li class="nav-item"><a class="nav-link" href="/list.gym">내
												주변 운동시설</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/list.food">특가 식품</a></li>
									</c:otherwise>
								</c:choose>
								<li class="nav-item"><a class="nav-link" href="/toList.part">근육별 운동법
										</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<!-- 네비 끝 -->
        <div class="empty"> </div>
        <!-- 바디 -->
        <div class="cls_body">
        	<div class="row justify-content-evenly">
				<div class="col-3">
					<h3 class="text-center mb-3" style="font-weight: 600; color: #97C4B8">My Page</h3>
				</div>
				<div class="col-6 d-flex justify-content-center">
					
				</div>
            <div class="row justify-content-evenly">
                <div class="col-3">
                    <div class="inner-container-left">
                        <div>
                        	<button type="button" id="modifyBtn" style="border:none; background:none;">정보수정</button>
                        </div>
                        <div>
                        	<button type="button" id="diaryBtn" style="border:none; background:none;">일기</button>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row inner-container-right d-flex justify-content-center">
                    	<div class="title d-flex justify-content-center mb-4">
                            <h3 style="margin-top: 50px;">오늘의 기록!</h3>
                    	</div>
                            <div class="contentsBox">
                            	<div></div>
	                            <form action="/diaryWrite.diary" method="post" id="diaryForm">
	                            	<div class="col labels d-flex justify-content-end" style="float:left;">
	                            	<label class="label" style="padding-left: 30px;">운동부위:&nbsp;</label>
	                            		<select name="diary_part" style="margin-right: 20px;">
	                            			<option value="arm" selected>팔</option>
	                            			<option value="shoulder">어깨</option>
	                            			<option value="chest">가슴</option>
	                            			<option value="back">등</option>
	                            			<option value="belly">복근</option>
	                            			<option value="lowerBody">하체</option>
	                            			<option value="etc">기타</option>
	                            		</select>
	                            	</div>
	                            	<div class="col labels d-flex justify-content-end" style="padding-right: 30px;">
	                            		<label>무게</label>
	                            		<input type="text" id="diary_weight" name="diary_weight" style="width: 60px; margin-left: 30px;"><br>                  
	                                </div>
	                                <div class="col labels d-flex justify-content-end" style="padding-right: 30px;">
	                                	<label>오늘의 몸무게</label>
	                                	<input type="text" id="user_weight" name="user_weight" style="width: 60px; margin-left: 30px;">
	                                </div>
	                                <textarea class="textBox" style="resize: none;" id="diary_content" name="diary_content" placeholder="오늘을 기록하세요. :)"></textarea>
                                </form>
                            </div>
                    </div>
                    <div class="btnSpace d-flex justify-content-end mt-4 gap-3">
                        <button class="btn btn-primary" id="writeBtn" type="button">일기 올리기</button>
                        <button class="btn btn-secondary" id="backBtn" type="button">뒤로 가기</button>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!-- 바디 끝 -->
        <!-- footer -->
        <div class="container footer">
            <div class="row footerInfo">
                <div class="col-6">
                    제휴 및 서비스 이용문의<br>
                    <h3 style="margin-top: 10px; font-weight: 600;">1588-0000</h3>
                    AM 09:00 - PM 06:00<br>
                    토 일 공휴일 휴무
                </div>
                <div class="col-6">
                    (주)당퍼트<br>
                    서울특별시 영등포구 선유동2로 57<br>
                    대표 : 홍신영<br>
                    사업자번호 : 123-45-67890<br>
                    통신판매번호 : 제2000-서울영등포구-0000호<br>
                    kh.projectmail@gmail.com<br>
                </div>
            </div>
            <div class="row footerMenu">
                <div class="col"><a href="/footer/ToS.jsp">이용약관</a></div>
                <div class="col"><a href="/footer/privacyPolicy.jsp">개인정보처리방침</a></div>
                <div class="col"><a href="/footer/location-based-service.jsp">위치정보이용약관</a></div>
                <div class="col"><a href="/toInformation.info?curPage=1">센터등록요청하기</a></div>
                <div class="col"><a href="/toInformation.info?curPage=1">문의하기</a></div>
            </div>
            <p>Copyright ⓒ Dangpert Co., Ltd. All rights reserved.</p>
        </div>
        <!-- footer 끝 -->
    </div>
    <script>
    $("#writeBtn").on("click", function(){
        let numberReg = /^[0-9]+$/;
        if($("#diary_weight").val() === ""){
           alert("무게를 입력해주세요 !");
           $("#diary_weight").focus();
           return;
        } else if ($("#user_weight").val() === ""){
           alert("오늘의 몸무게를 입력해주세요 !");
           $("#user_weight").focus();
           return;
        } else if ($("#diary_content").val() === ""){
           alert("운동 내용을 적아주세요!");
           $("#diary_content").focus();
           return;
        }
        
        if(!numberReg.test($("#diary_weight").val())){
           alert("무게는 숫자만 입력해주세요.");
           $("#diary_weight").focus();
           return;
        } else if (!numberReg.test($("#user_weight").val())){
           alert("몸무게는 숫자만 입력해주세요.");
           $("#user_weight").focus();
           return;
        }
        console.log("true");
        $("#diaryForm").submit();
     })
		
		$("#backBtn").on("click", function(){
			location.href = "/toDiarypage.diary";
		})
		
		document.getElementById("modifyBtn").onclick = function() {
        location.href = "/userModify.user";
    	}
		
    	document.getElementById("diaryBtn").onclick = function() {
        location.href = "/userDiary.user";
    	}
	</script>
</body>
</html>