<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>admin Page</title>

    <link rel="stylesheet" href="../../CSS/reset.css">
    <link rel="stylesheet" href="../../CSS/style.css">
    <link rel="stylesheet" href="../../CSS/admin/admin.css">
    <link rel="stylesheet" href="../../CSS/admin/user/user.css">
</head>
<body>
<header id="header" class="header">
       
    <div class="logo-bar">
        <h1 class="no-display">근처</h1>
        <a href="../index.html"><div class="logo"></div></a>
        <ul>
          <li><button class="logout">로그아웃</button></li>
        </ul>
    </div>

    <nav id="nav" class="nav">
        <h1 class="no-display">메뉴</h1>
        <ul>
        <li><a href="#">기본설정</a></li>
        <li><a href="#">상품관리</a></li>
        <li><a href="#">주문관리</a></li>
        <li><a href="index">회원관리</a></li>
        <li><a href="#">게시판관리</a></li>
        <li><a href="#">고객센터</a></li>
        </ul>
    </nav>

</header>


<div id="body" class="body">
    <aside class="aside">
        <a href="index"><h1 class="img-button user-button">회원관리</h1></a>
        <ul class="aside-menu">
            <li>회원 관리</li>
            <ul>
                <li><a href="list.html">회원 리스트</a></li>
                <li><a href="mana.html">회원등급 관리</a></li>
                <li><a href="leave">탈퇴회원 리스트</a></li>
                <li><a href="point">적립금 설정</a></li>
            </ul>
            <li>2</li>
            <li>3</li>
        </ul>
    </aside>

    <section class="main-section">
        <main class="main">
            <div class="main-head">
                <h1>회원 관리</h1>
                <span>home > 회원관리</span>
            </div>
            <div class="main-body">
                <section>
                    <h1>회원 통계</h1>
                    <table class="main-table">
                        <tr>
                            <th>신규회원 통계</th>
                            <td>오늘 0명/어제 0명/이번주 0명/이번달 0명</td>
                        </tr>
                        <tr>
                            <th>회원 종류</th>
                            <td>
                                <table class="inner-table">
                                    <tr>
                                        <th>회원구분</th>
                                        <th>인원</th>
                                    </tr>
                                    <tr>
                                        <th>제휴 시설</th>
                                        <td>${gymLength }</td>
                                    </tr>
                                    <tr>
                                        <th>2단계</th>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <th>1단계</th>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <th>일반 회원</th>
                                        <td>${userLength }<i class="fas fa-angle-double-right"></i></td>
                                        
                                    </tr>
                                    <tr>
                                        <th>가입 신청자</th>
                                        <td>0</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </section>

                <section class="table-section event-table">
                    <h1>회원 이벤트</h1>
                    <table>
                        <tr>
                            <th>생일</th>
                            <td>오늘 0명 / 이번 주 0명 / 이번 달 0명</td>
                        </tr>
                    </table>
                </section>

                <section class="table-section">
                    <h1>회원관련 설정</h1>
                    <table>
                        <tr>
                            <th>회원가입시 혜택	</th>
                            <td>
                                적립금 지급&nbsp;&nbsp;	:&nbsp;&nbsp; 적립금기능 <a href="point.html" class="point-url">미사용</a>
                            </td>
                        </tr>
                        <tr>
                            <th>회원인증 방식</th>
                            <td>인증 안함 </td>
                        </tr>
                        <tr>
                            <th>탈퇴설정</th>
                            <td>즉시탈퇴</td>
                        </tr>
                    </table>
                </section> 
            </div>
        </main>
    </section>
</div>

</body>
</html>