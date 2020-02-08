<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Add New Order - Admin</title>
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
	<!-- bootstrap select CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/bootstrap-select/bootstrap-select.css" />">
<body>

<!-- Start Header Top Area -->
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="logo-area">
                        <img src="<c:url value="/resourcesAdmin/img/logo/logo.png"/>" alt="" />
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- End Header Top Area -->
   <!-- Mobile Menu start -->
    <div class="mobile-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul class="mobile-menu-nav">
                                <li><a  href="/bookSpring/admin/home">Home</a></li>
								<li><a  href="/bookSpring/admin/order">"Order" Table</a></li>
								<li><a  href="/bookSpring/admin/order-detail">"Order Detail" Table</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        </div>
    <!-- Mobile Menu end -->
    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
                        <li ><a href="/bookSpring/admin/home"><i class="notika-icon notika-house"></i> Home</a>
                        </li>
                        <li class="active"><a  href="/bookSpring/admin/order"> "Order" Table</a>
                        </li>
                        <li><a  href="/bookSpring/admin/order-detail"> "Order Detail" Table</a>
                        </li>
                        <li><a data-toggle="tab" href="#Charts"><i class="notika-icon notika-bar-chart"></i> Charts</a>
                        </li>
                        <li><a data-toggle="tab" href="#Tables"><i class="notika-icon notika-windows"></i> Tables</a>
                        </li>
                        <li><a data-toggle="tab" href="#Forms"><i class="notika-icon notika-form"></i> Forms</a>
                        </li>
                        <li><a data-toggle="tab" href="#Appviews"><i class="notika-icon notika-app"></i> App views</a>
                        </li>
                        <li><a data-toggle="tab" href="#Page"><i class="notika-icon notika-support"></i> Pages</a>
                        </li>
                    </ul>
                    
                    </div>
                </div>
            </div>
        </div>
    <!-- Main Menu area End-->
	<div class="container">
			<div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <form:form action="/bookSpring/admin/order/submit-new" method="POST">
                    <div class="form-example-wrap mg-t-30">
                        
                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">User Id</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <div class="bootstrap-select fm-cmp-mg">
                                            
			                                    <form:select path="UserID" class="selectpicker">
				                                    <c:forEach var="userId" items="${IdList }">
				                                    	<option>${userId }</option>
				                                   	</c:forEach>
												</form:select>
			                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Create date</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            
						                    <form:input path="CreateDate" readonly="true" type='text' class="form-control" value="${curDate }" />
								                
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        
                        <div class="form-example-int mg-t-15">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <button class="btn btn-success notika-btn-success">Create Order</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>
                </div>
               </div>
		</div>
	
<!-- Start Footer area-->
    <div class="footer-copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2018 
. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Footer area-->
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
    <!-- jvectormap JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/jvectormap/jquery-jvectormap-2.0.2.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/jvectormap/jquery-jvectormap-world-mill-en.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/jvectormap/jvectormap-active.js" />"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/sparkline/jquery.sparkline.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/sparkline/sparkline-active.js" />"></script>
    <!-- flot JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/flot/jquery.flot.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/flot/jquery.flot.resize.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/flot/jquery.flot.pie.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/flot/jquery.flot.tooltip.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/flot/jquery.flot.orderBars.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/flot/curvedLines.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/flot/flot-active.js" />"></script>
    <!-- knob JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/knob/jquery.knob.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/knob/jquery.appear.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/knob/knob-active.js" />"></script>
    <!--  wave JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/wave/waves.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/wave/wave-active.js" />"></script>
    <!--  Chat JS
		============================================ -->
	<script src="<c:url value="/resourcesAdmin/js/chat/moment.min.js" />"></script>
    <script src="<c:url value="/resourcesAdmin/js/chat/jquery.chat.js" />"></script>
    <!--  todo JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/todo/jquery.todo.js" />"></script>
    <!-- plugins JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/plugins.js" />"></script>
    <!-- main JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/main.js" />"></script>
	
	<!-- bootstrap select JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/bootstrap-select/bootstrap-select.js"/>"></script>
</body>
</html>