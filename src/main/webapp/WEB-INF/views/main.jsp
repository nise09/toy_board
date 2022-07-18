<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must_revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title> Tour leave </title>
		
		<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
		
		<script src="/resources/assets/slick/slick.min.js"></script>
		
		<script src="/resources/js/main.js"></script>
		
		<link rel="stylesheet" href="/resources/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
		
		<link rel="stylesheet" href="/resources/assets/slick/slick.css"/>
		<link rel="stylesheet" href="/resources/assets/slick/slick-theme.css"/>

		<link rel="stylesheet" href="/resources/css/main.css"/>

</head>
	<body>
		<%@include file="/WEB-INF/views/includes/header.jsp" %>

		<div class="main">
			<section class="main_banner_area">
				<div class="main_banner_wrap">
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/m1100_10036.jpg">
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/m1100_11269.jpg">
						</a>
					</div>
					
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/m1100_11317.jpg">
						</a>
					</div>
					
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/m1100_11336.jpg">
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/m1100_11477.jpg">
						</a>
					</div>
					
					<div class="banner_item">
						
						<a href="#">
							<img src="/resources/images/m1100_11492.jpg">
						</a>
						
					</div>
					
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/m1100_11498.jpg">
						</a>
					</div>
					
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/m1100_8448.jpg">
						</a>
					</div>
					
				</div>
				<div class="banner_btn_area">
					<button id="prev">
						<img src="/resources/images/DM_20210324195651_072.PNG"/>
					</button>
					<button id="next">
						<img src="/resources/images/DM_20210324195651_073.PNG"/>
					</button>
				 </div>
			</section>
			
			<section class="item_list_area">
				<h1> 베스트 여행 </h1>
				<div class="item_list_wrap recommand_list">
					<c:forEach items="${bestProductList }" var ="product"> 
					<div class="prod_item">
						<div class="prod_item_img"
							 style="background-image:url('/images/${product.tlpi_uri}')"
							 onclick="location.href='/products/detail?prod_seq=${product.tlp_seq}'"
						></div>
						
						<div class="prod_item_text">
							<p class="prod_item_title">${product.tlp_name }</p>	
						</div>
						
						<div class="prod_item_price">
							<p> ${product.tlp_price }원 ~</p>
						</div>
						
						
					</div>
				
					</c:forEach>
				</div>
		</section>
		
		<section class="item_list_area">
				<h1> 스폐셜 여행 </h1>
				<div class="item_list_wrap recommand_list">
					<c:forEach items="${specialProductList }" var ="product"> 
					<div class="prod_item">
						<div class="prod_item_img"
							 style="background-image:url('/images/${product.tlpi_uri}')"
							 onclick="location.href='/products/detail?prod_seq=${product.tlp_seq}'"
						></div>
						
						<div class="prod_item_text">
							<p class="prod_item_title">${product.tlp_name }</p>	
						</div>
						
						<div class="prod_item_price">
							<p> ${product.tlp_price }원 ~</p>
						</div>
						
						
					</div>
				
					</c:forEach>
				</div>
		</section>
		
			<section class="item_list_area">
				<h1> MD추천 여행 </h1>
				<div class="item_list_wrap recommand_list">
					<c:forEach items="${mdProductList }" var ="product1"> 
					<div class="prod_item">
						<div class="prod_item_img"
							 style="background-image:url('/images/${product1.tlpi_uri}')"
							 onclick="location.href='/products/detail?prod_seq=${product1.tlp_seq}'"
						></div>
						
						<div class="prod_item_text">
							<p class="prod_item_title">${product1.tlp_name }</p>	
						</div>
						
						<div class="prod_item_price">
							<p> ${product1.tlp_price }원 ~</p>
						</div>
						
						
					</div>
				
					</c:forEach>
				</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</body>
			
</html>
