<%@page import="gc.entity.product.Product"%>
<%@page import="java.util.List"%>
<%@page import="gc.service.product.ProductListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>admin page</title>
    <link rel="stylesheet" href="../../CSS/reset.css">
    <link rel="stylesheet" href="../../CSS/admin/product/product-list.css" />
  </head>
  <body>
    <header id="header" class="header">
      <div class="logo-bar">
        <h1 class="no-display">근처</h1>
        <a href=""><div class="logo"></div></a>
        <ul>
          <li><button class="login">로그인</button></li>
          <li><button class="logout">로그아웃</button></li>
        </ul>
      </div>
      <nav id="nav" class="nav">
        <h1 class="no-display">메뉴</h1>
        <ul>
          <li><a href="#">기본설정</a></li>
          <li><a href="#">상품관리</a></li>
          <li><a href="#">주문관리</a></li>
          <li><a href="#">회원관리</a></li>
          <li><a href="#">게시판관리</a></li>
          <li><a href="#">고객센터</a></li>
        </ul>
      </nav>
    </header>

    <div id="body" class="body">
      <aside class="aside">
        <h1 class="aside-title">ASIDE</h1>
        <ul class="aside-menu">
          <li>쇼핑몰 상품 관리</li>
          <ul>
            <li><a href="list">상품 리스트</a></li>
            <li><a href="reg">상품 등록</a></li>
          </ul>
          <br />
          <li>트레이닝 센터 관리</li>
          <ul>
            <li><a href="">센터 리스트</a></li>
            <li><a href="">센터 등록</a></li>
            <li><a href="">센터 정보 수정</a></li>
            <!-- <li><a href="">상품 재고관리</a></li> -->
          </ul>
          <br />
          <li>강사 관리</li>
          <ul>
            <li><a href="">강사 리스트</a></li>
            <li><a href="">강사 등록</a></li>
            <li><a href="">강사 정보 수정</a></li>
          </ul>
          <br />
          </ul>
      </aside>
 <!-- ======================== main ======================== -->     
      <section class="main-section">
        <div class="main-title">
          <h1>상품 리스트</h1>
          <span> home > 상품관리 > 상품리스트 </span>
        </div>
        <section id="main" class="main">
          <section class="finder-container">
            <!-- <div class="finder-box"> -->
              <h1 class="no-display">상품검색도구</h1>
                <div class="select-row">
                  <div class="select-head">분류선택</div>
                  <div class="select-cell">
                    <select name="" id="" size="1">
                      <option>분류</option>
                      <option>스포츠웨어</option>
                      <option>단백질 보충제</option>  
                      <option>악세사리</option> 
                    </select>
                    <!-- <select name="" id="" size="1">
                      <option>2차 분류</option>
                      <option>상의</option>
                      <option>하의</option>    
                      <option>웨이프로틴(빠른흡수)</option>
                      <option>밀크&카제인(느린흡수)</option>    
                      <option>복합단백질</option>
                      <option>가방</option>    
                      <option>글러브</option>    
                      <option>물병</option>    
                      <option>마스크</option>    
                    </select> -->
                  </div>
                </div>
                <div class="search-row">
                  <div class="search-head">검색어</div>
                  <div class="search-cell">
                    <select name="" id="" size="1">
                      <option>상품명</option>  
                      <option>상품분류</option> 
                      <option>제조사</option>
                      <option>모델명</option>    
                    </select>
                      <form>                   
                        <input type="text" placeholder="검색">
                      </form>
                  </div>
                </div>
                <div class="sale-row">
                  <div class="sale-head">판매가</div>
                  <div class="sale-cell">
                    <form>
                      <input type="text">원 ~ <input type="text">원
                    </form>
                </div>               
            </div>
          </section>
          <div class="btn-search">
            <input type="button" value="검색">
          </div>
          
          
          <section class="sort-container">
            <div class="sort-box">
              <h1 class="no-display">정렬박스</h1>
              <a href="#">낮은 가격순</a>
              <a href="#">높은 가격순</a>
              <a href="#">등록일순</a>
              <a href="#">상품명순</a>
            </div>
          </section>
          <section class="productList-container">
            <div class="productList-box">
              <h1 class="no-display">상품목록 박스</h1>
              <ul class="title-row">
                <li class="title-check">
                  <input type="checkbox">         
                </li>
                <li class="title-number">번호</li>
                <li class="title-name">상품기본정보(코드/카테고리/상품명/브랜드)</li>                
                <li class="title-regdate">등록일</li>
                <li class="title-price">가격</li>
                <li class="title-inventory">재고</li>
                <li class="title-delivery">배송</li>
                <li class="title-display">진열</li>
                <!-- <li class="title-copy">진열</li> -->
                <li class="title-edit">수정</li>
                <li class="title-remove">삭제</li>
              </ul>

           	  <c:forEach var="p" items="${list}">
	              <ul class="product-row">
	                  <li class="product-check-list">
	                    <input type="checkbox">
	                  </li>
	                  <li class="product-number-list">${p.id}</li>                  
	                  <li class="product-name-list">
	                    <div class="product-name-img">
	                      <a href="#">이미지</a>
	                    </div>
	                    <div class="product-info">
	                      <div class="product-code">코드</div>
	                      <div class="product-category">카테고리</div>
	                      <div class="product-name">${p.productName}상품명</div>
	                      <div class="product-brand">${p.brand}</div> <!--브랜드-->
	                    </div>
	                  </li>                
	                <li class="product-regdate-list">${p.regdate}</li>
	                <li class="product-price-list">
	                    <label>${p.price}</label>
	                </li>
	   				
	   				<li class="product-inventory-list">
	                  <label>300</label> 개
	                </li>
	                <li class="product-delivery-list">
	                  <label>유료</label>
	                </li>
	   				<li class="product-display-list">
	                    <input type="button" value="진열">
	                </li>
	                <li class="product-edit-list">
	                    <a href="edit?id=${p.id}"><input type="button" value="수정"></a>
	                </li>
	                <li class="product-remove-list">
	                    <a href="del?id=${p.id}"><input type="button" value="삭제" /></a>
	                </li>
	              </ul>
              </c:forEach>
            </div> <!--productList-box end-->
          </section>   <!-- product container end-->
          <section class="pager-container">
            <div class="pager-box">
              <h1 class="no-display">페이지 요청목록</h1>
              <div class="check-box-edit">
                <input type="button" value="체크상품수정">
                <input type="button" value="체크상품삭제">
                <input type="button" value="체크상품진열">
              </div>
              <!-- <div class="before-page"> -->
                <!-- </div> -->
              <nav class="pager-menu">
                <a class="img-button before-button" href="#">이전</a>
                <ul>
                <c:forEach var="i" begin="0" end="4">
                    <li><a href="#">${i+1}</a></li>
                </c:forEach>
                </ul>
                <a class="img-button next-button" href="#">다음</a>
              </nav>    
                <!-- <div class="next-page"> -->
                <!-- </div> -->
              <div class="product-reg">
                <a href="reg">상품등록</a>
              </div>   
            </div>
          </section> 
        </section><!--end main-->
      </section>
    </div>   <!--body div-->        


    <section>
      <footer id="footer" class="footer">
        <h1>푸터</h1>
      </footer>
    </section>
  </body>
</html>