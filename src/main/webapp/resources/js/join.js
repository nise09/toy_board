
$(function (){
	
	let id_check = false;
	let email_check = false;

	$("#dup_check").click(function(){
		
		$.ajax({
			url:"/member/id_check?id="+$("#user_id").val(),
			type:"get",
			success:function(result) {
				if(result.status == "OK") {
					id_check == true;
				}
				alert(result.message);
			}	
		});
	});
	$("#email_dup_check").click(function(){
		
		$.ajax({
			url:"/member/email_check?email="+$("#user_email").val(),
			type:"get",
			success:function(result) {
				
				if(result.status == "OK") {
					email_check == true;
				}
				alert(result.message);
			}	
		});
	});
	
	$("#user_id").change(function(){
		
		id_check = false;
	})
	$("#user_email").change(function(){
		
		email_check = false;
	})
	
	$("#join_btn").click(function(){
	
		let id =$("#user_id").val();
		if(id.length ==0) {
			alert("아이디를 입력하세요");
			return;
		}
		if(!inputValidation(id)) {
			return;
		}
	
		
		let pwd = $("#user_pwd").val();
		if(pwd.length == 0) {
			alert("비밀번호를 입력하세요");
			return;
		}
		else if (pwd != $("#user_pwd_confirm").val()){
			alert("비밀번호와 비밀번호 확인 일치 하지 않습니다.");
			return;
		}
		
		let name = $("#user_name").val();
		if(name.length == 0) {
			alert("이름을 입력하세요");
			return;
		}
		if(pattern_spc.test(name)) {
			alert("이름에 특수문자를 사용할 수 없습니다.");
			return ;
		}
		if(pattern_blank.test(name)) {
			alert("이름에 공백문자를 사용할 수없습니다 ");
			return ;
		}
	
		let email = $("#user_email").val();
		if(!pattern_email.test(email)){
			alert("올바른 이메일을 입력하세요");
			return;
		}
		
		
		
		let year = $("#user_birth_year").val();
		let month = $("#user_birth_month").val();
		let date = $("#user_birth_date").val();
		if(!pattern_number.test(year)|| !pattern_number.test(month) || !pattern_number.test(date)){
			alert("올바른 생년월일을 입력하세요");
			return;
		}
		let birth = new Date(year+"-"+month+"-"+date);
		if(birth == "Invalid Date") {
			alert("올바른 생년월일을 입력하세요");
			retrun;
		}
		
		
		let receive_type = 0;
		if($("#info_receive_sms").prop("checked") && $("#info_receive_email").prop("checked") ){
			receive_type = 3;
		} 
		if($("#info_receive_sms").prop("checked") && !$("#info_receive_email").prop("checked") ){
			receive_type = 1;
		} 
		if(!$("#info_receive_sms").prop("checked") && $("#info_receive_email").prop("checked") ){
			receive_type = 2;
		} 
		
		
		let data = {
	  		"tlm_id":$("#user_id").val(),
	        "tlm_name":$("#user_name").val(),
	        "tlm_pwd":$("#user_pwd").val(),
	        "tlm_email":$("#user_email").val(),
	        "tlm_birth":$("#user_birth_year").val()+"-"+$("#user_birth_month").val()+"-"+$("#user_birth_date").val(),
	        "tlm_terms":$("#agree_terms").prop("checked")?1:0
		}
		console.log(JSON.stringify(data));
		
		$.ajax({
			
			url:"/member/join",
			type:"post",
			contentType:"application/json",
			data:JSON.stringify(data),
			success:function(result) {
				alert("aaa");
				alert(result.message);
				location.href="/";
			},
			error:function(e){
				alert("에러");
				console.log(e);
			}
		})
		
		
	})
	
	
	
})

const pattern_kor =/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
const pattern_spc =/[!@#$%^&*()+_+|<>?:{}]/;
const pattern_blank= /[\s]/g;
const pattern_email=/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
const pattern_number = /[0-9]/;


function inputValidation(text) {
	if(pattern_kor.test(text)) {
		alert("아이디에 한글을 입력할 수 없습니다.");
		return false;
	}
	if(pattern_spc.test(text)) {
		alert("아이디에 특수문자를 입력할 수 없습니다.");
		return false;
	}
	if(pattern_blank.test(text)) {
		alert("아이디에 공백을 입력할 수 없습니다.");
		return false;
	}
	return true;
}

