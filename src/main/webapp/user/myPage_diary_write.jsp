<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<style>
    /* 폰트 */
    @font-face {
        font-family: '양진체';
        src: url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }
    /* 폰트 끝 */
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: '양진체';
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
    }
    .cls_header a {
        color: #97C4B8;
    }
    .cls_header a:hover {
        color:#c9d4a9;
    }
    .dropdownBtn{
        background-color: #F0FFC2 !important;
        color:#97C4B8;
        border: 1px solid white;
    }
    .dropdownBtn:hover{
        color:#9be5d2;
    }
    .headDropdown{
        background-color: #F0FFC2 !important;
    }
    .headMenu{
        justify-content: end;
    }

    /* 로고 */
    .logoImg{
        height: 100%;
        padding: 0%;
        filter: invert(87%) sepia(8%) saturate(806%) hue-rotate(113deg) brightness(86%) contrast(86%);
    }
    .logoImg:hover {
        filter: invert(75%) sepia(12%) saturate(803%) hue-rotate(52deg) brightness(99%) contrast(80%);
    }
    /* 로고 이미지 사이즈 */
    .logoImg #logoImg{
        width: 100%;
        height: 100%;
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
    .navbar{
        background-color: #F0FFC2 !important;
    }
    .container-fluid a{
        color:#97C4B8 !important;
    }
    .container-fluid a:hover{
        color:#9be5d2 !important;
    }
    .container-fluid button{
        background-color: #F0FFC2 !important;
        color: #97C4B8 !important;
    }
    .navDropdown{
        border: 1px solid white;
        background-color: #d5fcf3 !important;
    }
    .container-fluid button:hover{
        background-color: #97C4B8 !important;
        color:#F0FFC2 !important;
    }
    .container-fluid span{
        filter: invert(40%) sepia(4%) saturate(3907%) hue-rotate(113deg) brightness(103%) contrast(66%);
    }
    .navSearchInput{
        border: 1px solid white;
    }
    .navSearchInput::placeholder{
        color: #FFE4C0;
    }

    /* 공백 */
    .empty {
        background-color: white;
        height: 80px;
    }

    /* 바디 */
    .title {
        border-bottom: 2px solid grey;
        width: 250px;
    }

    .inner-container-left {
        margin: auto;
        border: 1px solid black;
        height: 800px;
    }

    .inner-container-left *{
        margin: 20px;
    }

    .contentsBox {
        border: 1px solid black;
        width: 650px;
        height: 610px;
    }

    .contentsBox > .dropdown {
        margin-top: 24px;
        margin-left: 24px;
        margin-bottom: 24px;
    }

    .textBox {
        width: 600px;
        height: 500px;
        margin-left: 24px;
    }
    
    /* 푸터 */
    .footer {
        font-family: 'LeferiPoint-WhiteObliqueA';
        font-weight: 600;
        font-size: small;
        color: #709c91;
        border-top: 1px solid #c9d4a9;
    }

    .footer .row{
        border-bottom: 1px solid #c9d4a9;
    }

    .footer .footerInfo{
        padding-block: 3%;
        text-align: center;
    }

    .footerMenu{
        padding-block: 2%;
        text-align: center;
    }

    .footerMenu a{
        color: #709c91;
        text-decoration: none;
    }

</style>

<body>
    <div class="container">
        <!-- 헤더 -->
        <div class="row cls_header">
            <div class="col-3 logoImg">
                <a href="#">
                    <img id="logoImg" src="/resources/dpt_Logo.png">
                </a>
            </div>
            <div class="d-none d-md-block col-5"> </div>
            <div class="col p-0 headMenu d-flex justify-content-center">
                <a href="/login.user" style="text-decoration: none;">
                    <span>로그인</span>
                </a>
            </div>
            <div class="col p-0 headMenu d-flex justify-content-center">
                <a href="/toSignup.user" style="text-decoration: none;">
                    <span>회원가입</span>
                </a>
            </div>
            <div class="col p-0 headMenu d-flex justify-content-center">
                    <button type="button" class="btn dropdownBtn dropdown-toggle" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        고객센터
                    </button>
                    <ul class="dropdown-menu headDropdown">
                        <li><a class="dropdown-item" href="#">자주 묻는 질문</a></li>
                        <li><a class="dropdown-item" href="#">이벤트</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">로그아웃</a></li>
                    </ul>
            </div>
        </div>
        <!-- 네비 -->
        <div class="row cls_nav">
            <div class="col">
                <nav class="navbar navbar-expand-lg navbar-dark bg-warning">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">칼럼</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">내 주변 운동시설</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">특가 식품</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        근육별 운동법
                                    </a>
                                    <ul class="dropdown-menu navDropdown" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="#">상체</a></li>
                                        <li><a class="dropdown-item" href="#">하체</a></li>
                                        <li><a class="dropdown-item" href="#">몸통</a></li>
                                        <li><a class="dropdown-item" href="#">전체보기</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <form class="d-flex">
                                <input class="form-control navSearchInput me-2" type="search" placeholder="운동시설 검색" aria-label="Search">
                                <button class="btn btn-outline-light" type="submit">Search!</button>
                            </form>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- 네비 끝 -->
        <!-- 헤더 끝 -->
        <div class="empty"> </div>
        <!-- 바디 -->
        <div class="cls_body">
            <div class="row justify-content-evenly">
                <div class="col-3">
                    <h3 class="text-center mb-3">My Page</h3>
                    <div class="inner-container-left">
                        <div>정보수정</div>
                        <div>일기</div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex justify-content-center">
                        <div class="title d-flex justify-content-center mb-4">
                            <h5>오늘의 기록!</h5>
                        </div>
                    </div>
                    <div class="row inner-container-right">
                        <div>
                            <div class="contentsBox">
                                <div class="dropdown">
                                    <a class="btn btn-outline-dark dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                        운동부위
                                    </a>
                                  
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                        <li><a class="dropdown-item" href="#">팔</a></li>
                                        <li><a class="dropdown-item" href="#">어깨</a></li>
                                        <li><a class="dropdown-item" href="#">가슴</a></li>
                                        <li><a class="dropdown-item" href="#">등</a></li>
                                        <li><a class="dropdown-item" href="#">복근</a></li>
                                        <li><a class="dropdown-item" href="#">하체</a></li>
                                    </ul>
                                </div>
                                <textarea class="textBox" style="resize: none;"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end mt-4 gap-3">
                        <button class="btn btn-primary" type="button">일기 올리기</button>
                        <button class="btn btn-secondary" type="button">뒤로 가기</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 바디 끝 -->
        <div class="empty"> </div>
        <!-- 푸터 -->
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
                <div class="col"><a href="">이용약관</a></div>
                <div class="col"><a href="">개인정보처리방침</a></div>
                <div class="col"><a href="">위치정보이용약관</a></div>
                <div class="col"><a href="">센터등록요청하기</a></div>
                <div class="col"><a href="">문의하기</a></div>
            </div>
            <p>Copyright ⓒ Dangpert Co., Ltd. All rights reserved.</p>
        </div>
    </div>
</body>
</html>