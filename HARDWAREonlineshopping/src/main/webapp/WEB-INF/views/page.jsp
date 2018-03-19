 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	  
	  <spring:url var="css" value="/resources/css"/>
	  <spring:url var="js" value="/resources/js"/>
	  <spring:url var="images" value="/resources/images"/>
	  

	<c:set var="contextRoot" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

  <head>
  
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HARDWAREshopping-${title}</title>
<script>

window.menu ='${title}';

</script>
    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    
<%@include file="./shared/navbar.jsp" %>
    <!-- Page Content -->
    <!-- Loading the home content -->
    <c:if test="${userClickHome == true }">
    <%@include file="home.jsp" %>
   </c:if> 
   
   
   <!-- Load only when user click about -->
   <c:if test="${userClickabout == true }">
    <%@include file="about.jsp" %>
   </c:if> 
   
   <!-- Load only when user click contact -->
   <c:if test="${userClickContect == true }">
    <%@include file="contact.jsp" %>
   </c:if>
   
   <!-- Load only when user click help-->
   <c:if test="${userClickhelp == true }">
    <%@include file="help.jsp" %>
   </c:if>

    <!-- footer comes here -->
    <%@include file="./shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.js"></script>
    
    
    <script src="${js}/bootstrap.min.js"></script>


<!-- self coded javascript -->
<script src="${js}/myapp.js"></script>
  </body>

</html>
 