<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- text area auto size -->        
<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>    
<title>칼럼 상세페이지</title>
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
	height: 20px;
}
.empty1{
background-color: white;
	height: 10px;
}
.emptyTop{
	background-color: white;
	height: 50px;
}

/*컨텐츠*/
.title {
    color: #97C4B8;
    border-bottom: 1px solid #97C4B8;
    -bs-gutter-x: 0px;
    margin-bottom: 20px;
    margin-top: 10px;
    font-family: '양진체';
    }
    
.columnDetail{
	font-family: 'LeferiPoint-WhiteA';
	font-weight: 600;
}

  #column_title {
	width: 70%;
	height: 4rem;
	overflow: hidden;
	border: none;
	resize: none;
	font-weight: 600;
	text-align: center;
	font-family: 'LeferiPoint-WhiteA' !important;
    font-weight: 600;
	}
	
  .columnTextarea {
	width: 70%;
	height: 4rem;
	overflow: hidden;
	resize: none;
	font-weight: 600;
	text-align: center;
	border: none;
	border-top: 1px solid #b4ddd2;
	border-bottom: 1px solid #97C4B8;
	font-family: 'LeferiPoint-WhiteA';
    font-weight: 600;
    padding-top: 20px;
    padding-bottom: 20px;    
	}
	
	.figure-caption{
		font-family: 'LeferiPoint-WhiteA';
    	font-weight: 600;
	}
	
	.columnTextarea:focus, #column_title:focus {
	outline: none;
	}
	
	.content{
		position:relative;
	}
	
	.dateLabel{
		position:absolute;
	}
	
	img{
		width: 800px;
	}

/*버튼*/
	.btnSpace {
        margin-bottom: 10px;
        font-family: 'LeferiPoint-WhiteObliqueA';
        font-weight: 600;
        justify-content: center;
    }

    .btnModify, #btnDelete, #btnModify, #btnList{
        background-color: #73b1a1;
        border: 1px solid #F0FFC2;
        border-radius: 0.25rem;
        padding: 3px;
        padding-top: 10px;
        padding-left: 10px;
        padding-right: 10px;
        font-family: 'LeferiPoint-WhiteObliqueA';
        color: white;
        margin: 5px;
    }

    .btnModify:hover, #btnDelete:hover, #btnModify:hover, btnList:hover{
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
</head>
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
	<div class="container">
		<div class="columnDetail">
			<div class="row title">
				<div class="col" style="margin-top: 40px; text-align: center;">
					<figure class="figure d-felx justify-content-center">
  						<img src="/files/${dto.column_src}" onerror="this.style.display='none'" class="figure-img img-fluid rounded">
  						<figcaption class="figure-caption text-end">참고이미지</figcaption>
					</figure>
				</div>
			</div>
				<h1 class="class d-flex justify-content-center">
					<input type="text" id="column_title" name="column_title" value="${dto.column_title}" readonly>
				</h1>
				
			<div class="row">
                <div class="col content d-flex justify-content-center">
                	<div><label class="figure-caption dateLabel text-end" name="column_date">${dto.column_date}</label></div>
                	<textarea class="columnTextarea" name="column_content" readonly>${dto.column_content}</textarea>
                </div>
            </div>
			<div class="empty"></div>
			<div class="row btnSpace">
				<div class="col d-flex justify-content-center">
					<button type="button" class="btnList" id="btnList">목록으로</button>
				</div>
			<c:if test="${loginSession.user_auth eq 'manager'}">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-warning" id="btnModify" value="${dto.column_seq}">수정</button>
				</div>
				<div class="col-3 d-flex justify-content-start">
					<button type="button" class="btn btn-danger" id="btnDelete" value="${dto.column_seq}">삭제</button>
				</div>
			</c:if>
			</div>
		</div>
	</div>
	<div class="empty" style="margin: 20px;"></div>
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
	$("#btnList").on("click", function(){
		location.href="/toColumnPage.column?curPage=1";
	})
	
	$("#btnModify").on("click", function(e){
		location.href="/modify.column?column_seq="+${dto.column_seq};
	})
	
	$("#btnDelete").on("click", function(e){
		if(confirm("정말 삭제하시겠습니까?")){
			location.href="/deleteProc.column?column_seq="+$(e.target).val();
		}
		
	})
	
	autosize($("textArea"));
	
	




	</script>
</body>
</html>	