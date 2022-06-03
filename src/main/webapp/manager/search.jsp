<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>전체 회원 목록</title>
    </head>
    <style>
        /* 버튼 */
        .btnSpace {
            margin-bottom: 10px;
            font-family: 'LeferiPoint-WhiteObliqueA';
            font-weight: 600;
        }

        .btnAdd {
            background-color: #73b1a1;
            border: 1px solid #F0FFC2;
            border-radius: 0.25rem;
            padding: 3px;
            padding-left: 10px;
            padding-right: 10px;
            font-family: 'LeferiPoint-WhiteObliqueA';
            font-size: small;
            color: white;
            margin: 5px;
        }

        .btnAdd:hover {
            background-color: #F0FFC2;
            border: 1px solid #73b1a1;
            color: #73b1a1;
        }


        /* 폰트 */
        @font-face {
            font-family: '양진체';
            src: url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'SuncheonB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'LeferiPoint-WhiteObliqueA';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/LeferiPoint-WhiteObliqueA.woff') format('woff');
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
            height: 100%;
            padding: 0%;
            filter: invert(87%) sepia(8%) saturate(806%) hue-rotate(113deg) brightness(86%) contrast(86%);
        }

        .logoImg:hover {
            filter: invert(75%) sepia(12%) saturate(803%) hue-rotate(52deg) brightness(99%) contrast(80%);
        }

        /* 로고 이미지 사이즈 */
        .logoImg #logoImg {
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
            filter: invert(40%) sepia(4%) saturate(3907%) hue-rotate(113deg) brightness(103%) contrast(66%);
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

        /* 바디 타이틀 */
        .cls_title {
            height: 100px;
        }

        .title_div {
            height: 100%;
            width: 100%;
        }

        .title_div h2 {
            border-bottom: 2px solid rgb(221, 218, 218);
            width: 200px;
            height: 45px;
            text-align: center;
            font-family: '양진체';
        }


        /* 바디 서치 */

        .search_input>input {
            position: relative;
            right: 10px;
            width: 200px;
        }

        /* 바디 테이블 */
        .cls_table {
            width: 100%;
            margin: auto;
        }

        /* update table */
        .update_table {
            margin: auto;
            width: 80%;
        }

        .update_col {
            width: 20%;
        }

        .insert_col {
            width: 40%;
        }

        .update_table>tr {
            text-align: center;
        }

        .update_table>tr>th {
            background-color: rgb(231, 231, 231);
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
    </style>

    <body>
        <div class="container">
            <!-- 헤더 -->
            <div class="row cls_header">
                <div class="col-3 logoImg">
                    <a href="#">
                        <img id="logoImg"
                            src="file:///D:/Workspace_semi/KHproject_semi/src/main/webapp/resources/images/dpt_Logo.png">
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
                                    <input class="form-control navSearchInput me-2" type="search" placeholder="운동시설 검색"
                                        aria-label="Search">
                                    <button class="btn btn-outline-light" type="submit">Search!</button>
                                </form>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            </div>
            <!-- 네비 끝 -->
            <!-- 헤더 끝 -->
            <div class="empty"> </div>
            <div class="row cls_body">
                <div class="row cls_title">
                    <div class="col-12 d-flex align-items-center justify-content-center title_div">
                        <h2>전체 회원 목록</h2>
                    </div>
                </div>
                <div class="row cls_search">
                    <div class="col-10 d-flex justify-content-end search_input">
                        <input type="text" class="form-control" id="search_input" name="search_input">
                    </div>
                    <div class="col-2 search_btn">
                        <button type="button" class="btn btn-primary">찾기</button>
                    </div>
                </div>
                <div class="empty"></div>

                <!-- body영역 -->
                <div class="row cls_table">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">이메일</th>
                                <th scope="col">이름</th>
                                <th scope="col">휴대폰번호</th>
                                <th scope="col">가입날짜</th>
                                <th scope="col">등급</th>
                                <th scope="col">메모</th>
                                <th scope="col">수정 하기</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:if test="">

                            </c:if>
                            <c:if test="">
                                <c:forEach items="" var="dto">
                                    <tr>
                                        <td>이메일</td>
                                        <td>이름</td>
                                        <td>휴대폰번호</td>
                                        <td>가입날짜</td>
                                        <td>등급</td>
                                        <td>메모</td>
                                        <td><button type="button" class="clickBtn btn btnAdd">수정</button></td>
                                    </tr>
                                </c:forEach>
                            </c:if>

                        </tbody>
                    </table>
                    <nav>
                        <ul class="pagination justify-content-center">
                            <c:if test="${naviMap.needPrev eq true}">
                                <li class="page-item"><a class="page-link" href="">
                                        <</a>
                                </li>
                            </c:if>

                            <c:forEach var="pageNum" begin="${naviMap.startNavi}" end="${naviMap.endNavi}" step="1">
                                <li class="page-item"><a class="page-link"
                                        href="/board.bo?curPage=${pageNum}">${pageNum}</a></li>
                            </c:forEach>

                            <c:if test="${naviMap.needNext eq true}">
                                <li class="page-item"><a class="page-link" href="">></a></li>
                            </c:if>
                        </ul>
                    </nav>
                    <form action="user_update.manager" method="post" id="updateForm">
                        <table class="update_table cls_table table" border="1">
                            <thead class="update_table">
                                <tr>
                                    <th class="update_col"></th>
                                    <th class="insert_col">수정 전</th>
                                    <th class="insert_col">수정 내용</th>
                                </tr>
                            </thead>
                            <tbody class="update_table">
                                <tr>
                                    <th class="update_col">이메일</th>
                                    <td class="insert_col"><input type="text" class="form-control user_id" value=""
                                            readonly></td>
                                    <td class="insert_col"><input type="text" class="form-control user_id" value=""
                                            readonly></td>
                                </tr>
                                <tr>
                                    <th class="update_col">이름</th>
                                    <td class="insert_col"><input type="text" class="form-control" value="" readonly>
                                    </td>
                                    <td class="insert_col"><input type="text" class="form-control user_name" value=""
                                            class="update_input"></td>
                                </tr>
                                <tr>
                                    <th class="update_col">휴대폰 번호</th>
                                    <td class="insert_col"><input type="text" class="form-control" value="" readonly>
                                    </td>
                                    <td class="insert_col"><input type="text" class="form-control user_phone" value=""
                                            class="update_input" placeholder="-제외"></td>
                                </tr>
                                <tr>
                                    <th class="update_col">등급</th>
                                    <td class="insert_col"><input type="text" class="form-control" value="" readonly>
                                    </td>
                                    <td class="insert_col"><select class="form-select user_auth">
                                            <option value="원래등급" selected>등급 선택</option>
                                            <option value="member">Member</option>
                                            <option value="admin">Admin</option>
                                            <option value="manager">Manager</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <th class="update_col">메모</th>
                                    <td class="insert_col"><input type="text" class="form-control" value="" readonly>
                                    </td>
                                    <td class="insert_col"><input type="text"
                                            class="form-control update_input user_memo" value=""></td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="empty"></div>
                        <div class="row btn-before">
                            <div class="col-10 d-flex justify-content-end"></div>
                            <div class="col-2"><button type="button" class="btn btnAdd" id="modify_btn">수정</button>
                            </div>
                        </div>
                    </form>
                    <div class="row btn-after d-none">
                        <div class="col-10 d-flex justify-content-end">
                            <buttn type="button" class="btn btnAdd toModify_btn">수정완료</buttn>
                        </div>
                        <div class="col-2"><button type="button" class="btn btnAdd" id="cancel_btn">취소</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- footer 영역 -->
            <div class="container footer">
                <div class="row footerInfo">
                    <div class="col-6">
                        제휴 및 서비스 이용문의<br>
                        <h3>1588-0000</h3><br>
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

            <script>

                // 수정 버튼 눌렀을때 수정완료 취소 생성
                $("#modify_btn").on("click", function () {
                    $(".btn-before").css("display", "none");
                    $(".btn-after").removeClass("d-none");
                })
                // 취소 누르면 다시 원래대로 돌리기
                $("#cancel_btn").on("click", function () {
                    $(".btn-after").addClass("d-none");
                    $(".btn-before").css("display", "flex");
                })

                $(".toModify_btn").on("click", function(){
                    $("#updateForm").submit();
                })

                $(".clickBtn").on("click", function(){
                    let user_id = $(".user_select").find()

                    $.ajax({
                        url: ""
                        , type: "get"
                        , data: ""
                        , dataType: ""
                    })


                })

            </script>
    </body>

    </html>