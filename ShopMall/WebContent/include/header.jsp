<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

   

    <title>KG 쇼핑몰</title>

    <!-- Bootstrap Core CSS -->
    <link href="/ShopMall/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/ShopMall/css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
	
	 <!-- jQuery -->
    <script src="/ShopMall/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/ShopMall/js/bootstrap.min.js"></script>
    
</head>
<body>

<!-- header -->
	<div class="brand"><h1><font style="color:tomato; ">K</font><font style="color:blue; ">G</font> 쇼핑몰</h1></div>        
   <c:choose>
   <c:when test="${sessionScope.id != null }">
   <div style="padding-left:80%;"> 
   		<b>${sessionScope.id}님 환영합니다</b>
   </div>
   </c:when>
   </c:choose>
		
    
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
             
            </div>
           
           
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                	
                    <li>
                        <a href="/ShopMall/Home.jsp">HOME</a>
                    </li>
                    <li>
                        <a href="/ShopMall/category.jsp" style="color:blue">CATEGORY</a>
                    </li>
                    <li>
                        <a href="/ShopMall/board.jsp">BOARD</a> 
                    </li>
                    <c:choose>
                    <c:when test="${sessionScope.id == null }">
                    <li>
                        <a href="/ShopMall/login.jsp" style="color:red">LOGIN</a>
                    </li>
                     
                   </c:when>
                    	
                    <c:when test="${sessionScope.id != null }">
                    <li>
                        <a href="/ShopMall/logout.jsp" style="color:red">LOGOUT</a>
                    </li>
                    
           
                   </c:when>
                   </c:choose>
                </ul>
            </div>
            
            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
 	<!-- end header -->

</body>
</html>