<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must_revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
			<link rel="stylesheet" href="/resources/css/reset.css" />
			<link rel="stylesheet" href="/resources/css/header.css" />
			<link rel="stylesheet" href="/resources/css/join.css" />
			
			<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
			<script src="/resources/js/join.js"></script>
	</head>
<body>
		<%@include file="/WEB-INF/views/includes/header.jsp" %>
		
		<div class="join_form_wrap">
			<div class="form_header">
				<h1>회원가입</h1>
			
			</div>
			<table>
				<tbody>
					<tr>
						<td>아이디<span class="necessary">*</span></td>
						<td><input type="text" id="user_id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"/></td>
						<td><button id="dup_check">중복확인</button></td>
					</tr>
					<tr>
						<td>비밀번호<span class="necessary">*</span></td>
						<td><input type="password" id="user_pwd" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"/></td>
					</tr>
					<tr>
						<td>비밀번호 확인<span class="necessary">*</span></td>
						<td><input type="password" id="user_pwd_confirm" placeholder="비밀번호를 한번 더 입력해주세요"/></td>
					</tr>
					<tr>
						<td>이름<span class="necessary">*</span></td>
						<td><input type="text" id="user_name" placeholder="이름을 입력해주세요"/><td>
					</tr>
					<tr>
						<td>이메일<span class="necessary">*</span></td>
						<td><input type="text" id="user_email" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"/><td>
						<button id="email_dup_check">중복확인</button>
					</tr>
					
					
					<tr>
						<td>생년월일</td>
						<td>
							<div class="user_birth">
								<input type="number" id="user_birth_year" placeholder="YYYY"/>
								<span>/</span>
								<input type="number" id="user_birth_month" placeholder="MM"/>
								<span>/</span>
								<input type="number" id="user_birth_date" placeholder="DD"/>
								<span>/</span>
							</div>
						</td>
					</tr>
					
					<tr class="aggrements">
						<td>이용약관동의<span class="necessary">*</span></td>
						<td colspan="2">
							<div class="aggrements_row">
								<div>
									<input type="checkbox" id="agree_terms"/>
									<label for="agree_terms" class="checkbox_icon">
										
									</label>
								</div>
								<div>
								
									<label for="agree_terms" class="necessary_text">
										이용약관 동의 <span class="necessary_text">(필수)</span>
									</label>
									
									<a href="#"> 약관보기 <i class="fas fa-chevron-right"></i></a>
								</div>
							</div>
							
						
							
							
						</td>
						
					</tr>
				</tbody>
			</table>
			<div class="btn_area">
				<button id="join_btn"> 가입하기 </button>
			</div>
		</div>
		<%@include file="/WEB-INF/views/includes/footer.jsp" %>
	</body>
</html>