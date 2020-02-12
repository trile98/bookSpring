<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login - Admin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/bootstrap.min.css" />">
    <!-- font awesome CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/font-awesome.min.css" />">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/owl.carousel.css" />">
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/owl.theme.css" />">
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/owl.transitions.css" />">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/animate.css" />">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/normalize.css" />">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/scrollbar/jquery.mCustomScrollbar.min.css" />">
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/wave/waves.min.css" />">
    <!-- Notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/notika-custom-icon.css" />">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/main.css" />">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/style.css" />">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/responsive.css" />">
    <!-- modernizr JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/vendor/modernizr-2.8.3.min.js" />"></script>
</head>
<body>
 <!-- Login area Start-->
    <div class="login-content">
        <!-- Login -->
        <div class="nk-block toggled" id="l-login">
            <form:form id="LoginForm" class ="nk-form" action="/admin/signin" method="POST">
	            
	                <div class="input-group">
	                    <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
	                    <div class="nk-int-st">
	                    
	                        <form:input path="username" type="text" class="form-control" placeholder="Username"></form:input>
	                    	<form:errors path="username"/>
	                    </div>
	                </div>
	                <div class="input-group mg-t-15">
	                    <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-edit"></i></span>
	                    <div class="nk-int-st">
	                        <form:input path="password" type="password" class="form-control" placeholder="Password"></form:input>
	                    	<form:errors path="password"/>
	                    </div>
	                </div>
	               
	            
	            <button type="submit" class="btn btn-login btn-success btn-float"><i class="notika-icon notika-right-arrow right-arrow-ant"></i></button>
	 			
	        </form:form>
       	</div>
	</div>
    <!-- Login Area End -->
    
    
    <!-- jquery
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/vendor/jquery-1.12.4.min.js" />"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/bootstrap.min.js" />"></script>
    <!-- wow JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/wow.min.js" />"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/jquery-price-slider.js" />"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/owl.carousel.min.js" />"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/jquery.scrollUp.min.js" />"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/meanmenu/jquery.meanmenu.js" />"></script>
    <!-- counterup JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/counterup/jquery.counterup.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/counterup/waypoints.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/counterup/counterup-active.js" />"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js" />"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/sparkline/jquery.sparkline.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/sparkline/sparkline-active.js" />"></script>
    <!-- flot JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/flot/jquery.flot.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/flot/jquery.flot.resize.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/flot/flot-active.js" />"></script>
    <!-- knob JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/knob/jquery.knob.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/knob/jquery.appear.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/knob/knob-active.js" />"></script>
    <!--  Chat JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/chat/jquery.chat.js" />"></script>
    <!--  wave JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/wave/waves.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/wave/wave-active.js" />"></script>
    <!-- icheck JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/icheck/icheck.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/icheck/icheck-active.js" />"></script>
    <!--  todo JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/todo/jquery.todo.js" />"></script>
    <!-- Login JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/login/login-action.js" />"></script>
    <!-- plugins JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/plugins.js" />"></script>
    <!-- main JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/main.js" />"></script>
</body>
</html>