function pwchk(){ 
	pw1 = document.getElementById("pwd1").value;
	pw2 = document.getElementById("pwd2").value;
	if(pw1 == pw2){
		document.getElementById("label").innerHTML="확인!!";
	}else{
		document.getElementById("label").innerHTML="불일치!!";
		document.getElementById("pwd1").value="";
		document.getElementById("pwd2").value="";
	}
}
function chkValidate(){ 
	if(document.getElementById('id').value == ""){
		alert('아이디는 필수 입력 사항입니다.');	return;
	}else if(document.getElementById('pwd1').value == ""){
		alert('비밀번호는 필수 입력 사항입니다.');	return;
	}else{ document.form.submit(); }
}


function check(){
	if(request.getParameter("id").equals(dao.getId)){
		document.getElementById("label2").innerHTML="중복되는 id 입니다";
	}
	else{
		document.getElementById("label2").innerHTML="사용 가능한 id 입니다";
	}
}



