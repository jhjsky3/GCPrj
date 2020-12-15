<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gc.service.user.GymService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>admin page</title>
    <link rel="stylesheet" href="../../../CSS/reset.css" type="text/css" />
    <link rel="stylesheet" href="../../../CSS/style.css">
    <link rel="stylesheet" href="../../../CSS/admin/admin.css" type="text/css" />
    <link rel="stylesheet" href="../../../CSS/admin/user/gym/list.css" type="text/css" />
  </head>
  <body>
    <header id="header" class="header">
      <div class="logo-bar">
        <h1 class="no-display">근처</h1>
        <a href=""><div class="logo"></div></a>
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
          <li><a href="user.html">회원관리</a></li>
          <li><a href="#">게시판관리</a></li>
          <li><a href="#">고객센터</a></li>
        </ul>
      </nav>
    </header>

    <div id="body" class="body">
      <aside class="aside">
        <h1 class="aside-title"><a href="user.html"><img src="../../image/admin/member-aside.png" alt="회원관리"></a></h1>
        <ul class="aside-menu">
          <li>회원관리</li>
          <ul>
            <li><a href="userlist.html">회원 리스트</a></li>
            <li><a href="usermana.html">회원등급 관리</a></li>
            <li><a href="leaveuserlist.html">탈퇴회원 리스트</a></li>
            <li><a href="point.html">적립금 설정</a></li>
          </ul>
          <br />
          <li>제휴업체 관리</li>
          <ul>
            <li><a href="">제휴업체 리스트</a></li>
            <li><a href="">제휴업체 </a></li>
          </ul>
      </aside>
      <section class="main-section">
        <div class="main-title">
          <h1>제휴업체 리스트</h1>
          <span> home > 제휴업체 관리 > 제휴업체 리스트 </span>
        </div>
        <main id="main" class="main">
          <h1>제휴업체 리스트</h1>
          <table border="1">
            <tr>
              <th>회원등급</th>
              <td>
                <input type="checkbox"> 가입신청자
                <input type="checkbox"> 시설 회원
                <input type="checkbox"> 휴면 회원
              </td>
            </tr>
            <tr>
              <th>수신동의</th>
              <td>
                <input type="checkbox"> SMS 수신동의
                <input type="checkbox"> E-mail 수신동의
              </td>
            </tr>
            <tr>
              <th>검색 키워드</th>
              <td>
                <select>
                  <option>이름</option>
                  <option>아이디</option>
                  <option>이메일</option>
                  <option>휴대폰</option>
                  <option>전화번호</option>
                  <option>시설 명</option>
                </select>
                <input class="sel-text" type="text">
              </td>
            </tr>
            <tr>
              <th>휴면 회원</th>
              <td>
                100일이상 미 접속자
              </td>
            </tr>
          </table>
            <div class="find">
                  <input class="img-button find-button" type="submit" value="검색">
            </div>
            
          <table border="1">
            <thead>
              <tr>
                <th><input type="checkbox"></th>
                <th>번호</th>
                <th>이름</th>       
                <th>시설 명</th>
                <th>회원등급</th>
                <th>주소</th>
                <th>핸드폰 번호</th>
                <th>시설 번호</th>
                <th>인증방식</th>
                <th>가입일</th>    
              </tr>
            </thead>
            <tbody>
              <c:forEach var="gym" items="${gymlist}">
	              <tr>
	                <td><input type="checkbox"></td>
	                <td>${gym.id}</td>
	                <td>${gym.name }</td>
	                <td>${gym.gym_name}</td>
	                <td>시설회원</td>
	                 <td>서울시 종로구 대일빌딩</td>
	                <td>010-1234-5678</td>
	                <td>02-123-4567</td>
	                <td>핸드폰</td>
	                <td>20.11.01</td>
	              </tr>
              </c:forEach>
            </tbody>
          </table>
          <div class="page-list">
                <span><a href="">이전</a></span>
                <ul>
                	<c:forEach var="i" begin="0" end="4">
						<li>${i+1}</li>
					</c:forEach>
                </ul>
                <span><a href="">다음</a></span>
         </div>
        </main>
      </section>
      </div>
    <section>
      <footer id="footer" class="footer">
        <h1>푸터</h1>
      </footer>
    </section>
  </body>
</html>