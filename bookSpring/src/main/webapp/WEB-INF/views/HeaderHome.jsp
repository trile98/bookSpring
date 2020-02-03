<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/master site.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Book shop</title>
	<meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML" />
	<meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website" />
	
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link href="<c:url value="resourcesHome/templatemo_style.css"/>" rel="stylesheet" type="text/css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.9.0/css/mdb.min.css" rel="stylesheet">
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/js/mdb.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>

</head>
  
<body style="background-color: #4B4743">
<div class="container "  style="background-color: #1C1C1B">

    <!-- Control the column width, and how they should appear on different devices -->
    <div class="row" style="height: 240px">
      <div class="col-sm-12" style="padding: 0px 14px;height: 240px"><img alt="Logo" src="resourcesHome/images/banner1.jpg"style="width:100%;height: 100%"></div>

    </div>

    
        <div class="row">
			<div class="col-sm-12 col-md-12" style="padding: 0px 10px">
				<nav class="navbar navbar-light bg-dark" style="background-color: #1C1C1B">
				  <form class="form-inline" action="Books/1" >
				    <input class="form-control mr-sm-2" type="search" name="Search" style="width: 300px" placeholder="Search" aria-label="Search">
				    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				  </form>
			
				<a href="user/signin"><button class="btn peach-gradient" style="float: right">Sign In</button></a>
				<a href="user/signup"><button class="btn purple-gradient" style="float: right">Sign Up</button></a>
				<a href="Cart-new"><button class="btn blue-gradient" style="float: right"><i class="fas fa-shopping-cart"></i>Giỏ hàng</button></a>
			</div>

    </div>



    <div class="row ">
		<div class="col-sm-12 col-md-12 position-relative " data-spy="affix" data-offset-top="197">
		  <div >
			  <div id="cssmenu">
			   <ul>
			   <li><a href="Home/1" class="current">Trang chủ</a></li>
			            <li><a href="Intro">Giới thiệu</a></li>
			            <li><a href="Books/1?Search=">Sách</a></li>            
			            <li><a href="NewBooks/1">Sách mới</a></li>  
			            <li><a href="Contact">Liên hệ</a></li>	</ul>
			    </div> <!-- end of menu -->

		</div>
    </div>
    </div>
    <div class="row">
    	<div class="col-sm-12 col-md-12">
		   <div id="myCarousel" class="carousel carousel-fade slide border" data-ride="carousel">
		   <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		    <li data-target="#myCarousel" data-slide-to="3"></li>
		    <li data-target="#myCarousel" data-slide-to="4"></li>
		  </ol>
			   <div class="carousel-inner">
			      <div class="carousel-item active" style="">
			         <a target="_blank" href="javascript:"><img src="<c:url value="resourcesHome/images/nature/image1.jpg"/>" alt="hình 1" style="width: 100%" /> </a>
			      </div>
			      <div class="carousel-item">
			         <a target="_blank" href="javascript:"><img src="<c:url value="resourcesHome/images/nature/image2.jpg"/>" alt="hình 2" style="width: 100%"/> </a>
			      </div>
			      <div class="carousel-item">
			         <a target="_blank" href="javascript:"><img src="<c:url value="resourcesHome/images/nature/image3.jpg"/>" alt="hình 3" style="width: 100%"/> </a>
			      </div>
			      <div class="carousel-item">
			         <a target="_blank" href="javascript:"><img src="<c:url value="resourcesHome/images/nature/image4.jpg"/>" alt="hình 4" style="width: 100%"/> </a>
			      </div>
			      <div class="carousel-item">
			         <a target="_blank" href="javascript:"><img src="<c:url value="resourcesHome/images/nature/image5.jpg"/>" alt="hình 5" style="width: 100%"/> </a>
			      </div>
			   </div>
			   <!-- Controls -->
			   <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
			   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			   <span class="sr-only">Previous</span>
			   </a>
			   <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
			   <span class="carousel-control-next-icon" aria-hidden="true"></span>
			   <span class="sr-only">Next</span>
			   </a>
			</div>

		</div>

    </div>
  	
  	</div>
</body>
</html>