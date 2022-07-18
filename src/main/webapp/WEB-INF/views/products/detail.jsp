<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>title</title>
		
		<link rel="stylesheet" href="/resources/css/reset.css" />
		<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
		<link rel="stylesheet" href="/resources/css/detail.css"/>
		
		<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="/resources/js/detail.js"></script>
		
	</head>
	<body>
		<%@include file="/WEB-INF/views/includes/header.jsp" %>
				
		<div class="main">
			<section class="prod_detail_area">
				<div class="prod_img_box">
					<img src="/images/${product.tlpi_uri }">
				</div>
				<div class="prod_detail_content">
					<p class="prod_name"> ${product.tlp_name} </p>
					
				
					
					<div class="detail_info">
						<div class="row">
							<div>상세내용</div><div> ${product.tlp_sub_name }</div>
						</div>
					</div>
					<div class="detail_info">
						<div class="row">
							<div>여행장소</div>
							<div>
								<p>${product.tlc_name }</p>
							</div>
						</div>
					
					</div>
					<div class="detail_info">
						<div class="row">
							<div>체크인</div>
							<div>
								<p> ${product.tlp_chkin_date }</p>		
							</div>
						</div>
					</div>
					
					<div class="detail_info">
						<div class="row">
							<div>체크아웃</div>
							<div>
								<p> ${product.tlp_chkout_date }</p>
							</div>
						</div>
					</div>
					<div class="detail_info last">
						<div class="row">
							<div>구매수량</div>
							
							<div>
								<button id="decrease">
									<i class="fas fa-minus"></i>
								</button>
								<span class="total">
									1
								</span>
								<button id="increase">
									<i class="fas fa-plus"></i>
								</button>
							</div>
						</div> 
					</div>
					<div class="final_price_area">
						<div class="final_price">
							<span>총 상품금액 :</span>
							<span id="final" data-value="${product.tlp_price }">${product.tlp_price }</span>
							<span>원</span>
						</div>
						
					
					</div>
					<div class="button_area">
						
						<button id="add_cart"> 예약 하기 </button>
					</div>
				</div>
			</section>
		</div>
		
	
	</body>
	<%@include file="/WEB-INF/views/includes/footer.jsp" %>
</html>

