<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Order - Admin</title>
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
    <!-- meanmenu CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/meanmenu/meanmenu.min.css" />">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/animate.css" />">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/normalize.css" />">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/scrollbar/jquery.mCustomScrollbar.min.css" />">
    <!-- jvectormap CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/jvectormap/jquery-jvectormap-2.0.3.css" />">
    <!-- notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/notika-custom-icon.css" />">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/main.css" />">
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/resourcesAdmin/css/wave/waves.min.css" />">
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

<!-- Error Message -->
<c:if test="${not empty ResultOrderMes}">
	<h1>this is a message here</h1>
	<script>alert(${ResultOrderMes})</script>
</c:if>
<!-- Error Message End -->

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
                        <li class="active"><a  href="/bookSpring/admin/Order"> "Order" Table</a>
                        </li>
                        <li><a data-toggle="tab" href="#Interface"><i class="notika-icon notika-edit"></i> Interface</a>
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
                    <div class="tab-content custom-menu-content">
                        <div id="Home" class="tab-pane in active notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="index.html">Dashboard One</a>
                                </li>
                                <li><a href="index-2.html">Dashboard Two</a>
                                </li>
                                <li><a href="index-3.html">Dashboard Three</a>
                                </li>
                                <li><a href="index-4.html">Dashboard Four</a>
                                </li>
                                <li><a href="analytics.html">Analytics</a>
                                </li>
                                <li><a href="widgets.html">Widgets</a>
                                </li>
                            </ul>
                        </div>
                        <div id="mailbox" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="inbox.html">Inbox</a>
                                </li>
                                <li><a href="view-email.html">View Email</a>
                                </li>
                                <li><a href="compose-email.html">Compose Email</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Interface" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="animations.html">Animations</a>
                                </li>
                                <li><a href="google-map.html">Google Map</a>
                                </li>
                                <li><a href="data-map.html">Data Maps</a>
                                </li>
                                <li><a href="code-editor.html">Code Editor</a>
                                </li>
                                <li><a href="image-cropper.html">Images Cropper</a>
                                </li>
                                <li><a href="wizard.html">Wizard</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Charts" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="flot-charts.html">Flot Charts</a>
                                </li>
                                <li><a href="bar-charts.html">Bar Charts</a>
                                </li>
                                <li><a href="line-charts.html">Line Charts</a>
                                </li>
                                <li><a href="area-charts.html">Area Charts</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Tables" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="normal-table.html">Normal Table</a>
                                </li>
                                <li><a href="data-table.html">Data Table</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Forms" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="form-elements.html">Form Elements</a>
                                </li>
                                <li><a href="form-components.html">Form Components</a>
                                </li>
                                <li><a href="form-examples.html">Form Examples</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Appviews" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="notification.html">Notifications</a>
                                </li>
                                <li><a href="alert.html">Alerts</a>
                                </li>
                                <li><a href="modals.html">Modals</a>
                                </li>
                                <li><a href="buttons.html">Buttons</a>
                                </li>
                                <li><a href="tabs.html">Tabs</a>
                                </li>
                                <li><a href="accordion.html">Accordion</a>
                                </li>
                                <li><a href="dialog.html">Dialogs</a>
                                </li>
                                <li><a href="popovers.html">Popovers</a>
                                </li>
                                <li><a href="tooltips.html">Tooltips</a>
                                </li>
                                <li><a href="dropdown.html">Dropdowns</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Page" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="contact.html">Contact</a>
                                </li>
                                <li><a href="invoice.html">Invoice</a>
                                </li>
                                <li><a href="typography.html">Typography</a>
                                </li>
                                <li><a href="color.html">Color</a>
                                </li>
                                <li><a href="login-register.html">Login Register</a>
                                </li>
                                <li><a href="404.html">404 Page</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Menu area End-->

 <!-- Data Table area Start-->
    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                            <h2>Order</h2>
                            
                        </div>
                        <div>
                        	<a href="/bookSpring/admin/order/addNew" class="btn btn-success notika-btn-success waves-effect" >Add New</a>
                        </div>
                        <div class="table-responsive">
                            <table id="data-table-basic" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>UserID</th>
                                        <th>CreateDate</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
	                                <c:forEach var="order" items="${OrderList }">
	                                    <tr>
	                                        <td>${order.getID() }</td>
	                                        <td>${order.getUserID() }</td>
	                                        <td>${order.getCreateDate() }</td>
	                                        <td>${order.getTotal() }</td>
	                                        <td><a class="modal-Edit" data-id="${order.getID() }" data-userid="${order.getUserID() }" data-createdate = "${order.getCreateDate() }" data-total ="${order.getTotal() }" data-toggle="modal" href="#" data-target ="#EditOrderModal"><i class="fas fa-edit"></i>Edit</a> | <a data-id ="${order.getID() }" data-toggle="modal" href="#" data-target ="#OrderDeleteModal" class="modal-Delete"><i class="fas fa-trash-alt"></i>Delete</a>
	                                    </tr>
                                    </c:forEach>
                                </tbody>
                             
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Data Table area End-->

<!-- Edit Modal Start -->
	<div class="modal animated rubberBand" id="EditOrderModal" role="dialog">
           <div class="modal-dialog modals-default">
               <div class="modal-content">
                   <form:form id="EditOrderForm" action="/bookSpring/admin/order/edit/" method="POST">
	                   <div class="modal-header">
	                       <button type="button" class="close" data-dismiss="modal">&times;</button>
	                   </div>
	                   <div class="modal-body">
	                       	<div class="container">
								<div class="row">
					                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
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
					                                            
								                                    <form:select id="EditUserIdInput"  path="UserID" class="selectpicker">
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
					                                            
											                    <form:input path="CreateDate" id="EditCreateDateInput" readonly="true" type='text' class="form-control" value="" />
													                
					                                        </div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
					                        
					                        <div class="form-example-int form-horizental mg-t-15">
					                            <div class="form-group">
					                                <div class="row">
					                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
					                                        <label class="hrzn-fm">Total</label>
					                                    </div>
					                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
					                                        <div class="nk-int-st">
					                                            
											                    <form:input path="Total" id="EditTotalInput" type='text' class="form-control" value="" />
													                
					                                        </div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
					                        
					                </div>
					               </div>
							</div>
	                   </div>
	                   <div class="modal-footer">
	                       <button type="submit" class="btn btn-default" >Save changes</button>
	                       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	                   </div>
               		</form:form>
               </div>
           </div>
       </div>
<!-- Edit Modal End -->

<!-- Delete Modal Start -->
	<div class="modal animated rubberBand" id="OrderDeleteModal" role="dialog">
           <div class="modal-dialog modals-default">
               <div class="modal-content">
                   
	                   <div class="modal-header">
	                       <button type="button" class="close" data-dismiss="modal">&times;</button>
	                   </div>
	                   <div class="modal-body">
	                       	Do you want to delete this record???
	                   </div>
	                   <div class="modal-footer">
		                   <form:form id="OrderDeleteForm" action="/bookSpring/admin/order/delete/" method="POST">
		                       <button type="submit" class="btn btn-default">Yes</button>
		                       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		                   </form:form>
	                   </div>
               		
               </div>
           </div>
       </div>
<!-- Delete Modal End -->



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
	<!-- tawk chat JS
		============================================ -->
    <script src="<c:url value="/resourcesAdmin/js/tawk-chat.js" />"></script>
    <!-- own JS
		============================================ -->
    <c:url value="/resourcesAdmin/js/AdminOrder.js" var="myUrl" />
    <script type="text/javascript" src="${myUrl }"></script>
    
    
</body>
</html>