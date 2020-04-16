<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
 <%
    request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
 
<meta charset="utf-8">
<title>Insert title here</title>

<style>
#image{  display:flex; width:1500px; height:500px;  z-index:0; }
#pic{  width:1500px;  height:500px; padding-top:50px;  z-index:-1; }
#pic01{  position:relative; top:200px; width:100px;  height:100px;  }
#pic02{  position:relative; top:200px; width:100px;  height:100px;  }
</style>
<script>
var list=["1","2","3"];
var x = 0;
function prev(){
	if(x == 0)  x = list.length-1;
	else   x = x-1;
	document.getElementById("pic").src="/ShopMall/img/"+list[x]+".JPG";
}
function next(){
	if(x == list.length-1)  x = 0;
	else  x = x+1;
	document.getElementById("pic").src="/ShopMall/img/"+list[x]+".JPG";
}
var stopVal;
function auto(){
	if(x == list.length-1)  x = 0;
	else  x = x+1;
	document.getElementById("pic").src="/ShopMall/img/"+list[x]+".JPG";
	stopval = setTimeout("auto()",2000)
}
function stop(){  clearTimeout(stopval)  }
</script>
</head>
<body onload="auto()">
<jsp:include page="include/header.jsp"/>
<div  id="image" onmouseover="auto()" onmouseout="stop()" style="margin: 0 auto;">
	
		<img src="/ShopMall/img/1.JPG" id="pic"/>
		
	</div>
            
            
            
            
            
<jsp:include page="include/footer.jsp"/>
</body>
</html>