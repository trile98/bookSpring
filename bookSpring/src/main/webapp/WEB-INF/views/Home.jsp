<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<link href="<c:url value="../resourcesHome/templatemo_style.css"/>" rel="stylesheet" type="text/css">
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

<script type="text/javascript" src="<c:url value="../resourcesHome/js/custom.js"/>"></script>

  
<body style="background-color: #4B4743">
<div class="container" style="background-color: #1C1C1B">

    <!-- Control the column width, and how they should appear on different devices -->
    <div class="row" style="height: 240px">
      <div class="col-sm-12" style="padding: 0px 14px;height: 240px"><img alt="Logo" src="../resourcesHome/images/banner1.jpg"style="width:100%;height: 100%"></div>

    </div>

    
    <div class="row">
			<div class="col-sm-12 col-md-12" style="padding: 0px 14px">
				<nav class="navbar navbar-light bg-dark" style="background-color: #1C1C1B">
				  <form class="form-inline" >
				    <input class="form-control mr-sm-2" type="search" style="width: 300px" placeholder="Search" aria-label="Search">
				    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				  </form>
			
				<button class="btn peach-gradient" style="float: right">Sign In</button>
				<button class="btn purple-gradient" style="float: right">Sign Up</button>
				<button class="btn blue-gradient" style="float: right"><i class="fas fa-shopping-cart"></i></button>
			</div>

    </div>



    <div class="row ">
		<div class="col-sm-12 col-md-12 position-relative " data-spy="affix" data-offset-top="197">
		  <div >
			  <div id="cssmenu">
			   <ul>
			   <li><a href="../Home/1" class="current">Trang chủ</a></li>
			            <li><a href="../Intro">Giới thiệu</a></li>
			            <li><a href="../Books/1">Sách</a></li>            
			            <li><a href="../NewBooks/1">Sách mới</a></li>  
			            <li><a href="../Contact">Liên hệ</a></li>	</ul>
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
			         <a target="_blank" href="javascript:"><img src="<c:url value="../resourcesHome/images/nature/image1.jpg"/>" alt="hình 1" style="width: 100%" /> </a>
			      </div>
			      <div class="carousel-item">
			         <a target="_blank" href="javascript:"><img src="<c:url value="../resourcesHome/images/nature/image2.jpg"/>" alt="hình 2" style="width: 100%"/> </a>
			      </div>
			      <div class="carousel-item">
			         <a target="_blank" href="javascript:"><img src="<c:url value="../resourcesHome/images/nature/image3.jpg"/>" alt="hình 3" style="width: 100%"/> </a>
			      </div>
			      <div class="carousel-item">
			         <a target="_blank" href="javascript:"><img src="<c:url value="../resourcesHome/images/nature/image4.jpg"/>" alt="hình 4" style="width: 100%"/> </a>
			      </div>
			      <div class="carousel-item">
			         <a target="_blank" href="javascript:"><img src="<c:url value="../resourcesHome/images/nature/image5.jpg"/>" alt="hình 5" style="width: 100%"/> </a>
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
  	
  	<div class="row" style="padding:10px 0px;">
  		<div class="col-sm-4 col-md-4 mucluc" style="padding:0px 20px;font-size: 10px;font-family: cursive;">
  			<div style="background: black;padding-left:10px">
  			<h1 style="font-size: 14px;padding-top: 10px;color: white">Danh mục sách</h1>
                <ul>
                    <li><a href="kinhte.html">Sách kinh tế</a></li>
                    <li><a href="vanhoctrongnuoc.html">Sách văn học trong nước</a></li>
                    <li><a href="vanhocnuocngoai.html">Sách văn học nước ngoài</a></li>
                    <li><a href="thuongthuc.html">Sách thường thức - Đời sống</a></li>
                    <li><a href="thieunhi.html">Sách thiếu nhi</a></li>
                    <li><a href="tinhoc-ngoaingu.html">Sách tin học - Ngoại ngữ</a></li>
                    <li><a href="giaokhoa-giaotrinh.html">Sách giáo khoa - Giáo trình</a></li>
                    <li><a href="chuyennganh.html">Sách chuyên ngành</a></li>
                    <li><a href="tapchi.html">Tạp chí</a></li>
            	</ul>
            	<hr style="border-top: 1px dotted #d2691e;">
            <h1 style="font-size: 14px;color: white">Bestsellers</h1>
                <ul>
                    <li><a href="#">Trò chơi vương quyền</a></li>
                    <li><a href="#">Harry Potter (7 tập)</a></li>
                    <li><a href="#">Chúa tể những chiếc nhẫn</a></li>
                    <li><a href="#">Nancy Drew</a></li>
                    <li><a href="#">Đi qua thương nhớ</a></li>
                    <li><a href="#">Đừng bao giờ từ bỏ khát vọng</a></li>
                    <li><a href="#">Phương pháp giáo dục con của người Do thái</a></li>
                    <li><a href="#">Ngồi khóc trên cây</a></li>
                    <li><a href="#">Cuộc sống không giới hạn</a></li>
                    <li><a href="#">Tôi tài giỏi, bạn cũng thế</a></li>
            	</ul>
            	<hr style="border-top: 1px dotted #d2691e;">
            	<br>
  		</div>
  		</div>
  		
  		<div class="col-sm-4 col-md-4">
  				<div id="card-right">
  					

					<c:forEach items="${listProduct}" var="letter" begin="${(trang-1)*10}" end ="${(trang-1)*10+9}" step="2">
					    <div class="card-deck" style="width:100%;overflow: hidden;">

							  <!-- Card -->
							  <div class="card mb-3">
							
							    <!--Card image-->
							    <div style="align-self:  center;" >
							      <img class="card-img-top" src="${letter.getImageLink()}" alt="Card image cap" style="height: 150px">
							      <a href="#!">
							        <div class="mask rgba-white-slight"></div>
							      </a>
							    </div>
							
							    <!--Card content-->
							    <div class="card-body">
							
							      <!--Title-->
							      <h5 class="card-title" style="height: 24px;overflow: hidden;">${letter.getTitle()}</h5>
							      <!--Text-->
							      <p class="card-text" style="height: 60px;overflow: hidden">author:<i style="font-family: Tahoma;color: olive;">${letter.getAuthor()}</i></p>
							      <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
							      <p class="card-text "><h3 style="color: #85391F;margin-left: 20px"><fmt:formatNumber type="number" maxFractionDigits="3" value="${letter.getPrice()}"/>₫ </h3>
							      <small class="text-muted"><div style="font-size:12px;color: #85391F;margin-left: 20px"> (20% off)</div></small></p>
							      	<div class="form-row">
							      	
							      		<form action="Detail" method="post">
							      	 		<input type="hidden" id="hidden" name="ID" value="${letter.getID()}">
							      	 		<button type="submit"  class="btn btn-light-blue btn-md">Chi tiết</button>
							      		</form>
							      		<form action="Order" method="post">
							      	 		<input type="hidden" id="hidden" name="ID" value="${letter.getID()}">
							      	 		<button type="submit" class="btn btn-light-blue btn-md">Đặt hàng</button>
							      		</form>
								  		
								  	</div>
							    </div>
							  </div>
						</div>
					</c:forEach>
  				</div>
  		</div>
  		
  		<div class="col-sm-4 col-md-4">
  				<c:forEach items="${listProduct}" var="letter" begin="${(trang-1)*10+1}" end ="${(trang-1)*10+10}" step="2">	
					    <div class="card-deck" style="width:100%;overflow: hidden;">

							  <!-- Card -->
							  <div class="card mb-3">
							
							    <!--Card image-->
							    <div class="view overlay" style="align-self:  center;" >
							      <img class="card-img-top" src="${letter.getImageLink()}" alt="Card image cap" style="height: 150px">
							      <a href="#!">
							        <div class="mask rgba-white-slight"></div>
							      </a>
							    </div>
							
							    <!--Card content-->
							    <div class="card-body">
							
							      <!--Title-->
							      <h5 class="card-title" style="height: 24px;overflow: hidden;">${letter.getTitle()}</h5>
							      <!--Text-->
							      <p class="card-text" style="height: 60px;overflow: hidden">author:<i style="font-family: Tahoma;color: olive;">${letter.getAuthor()}</i></p>
							      <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
							      <p class="card-text "><h3 style="color: #85391F;margin-left: 20px"><fmt:formatNumber type="number" maxFractionDigits="3" value="${letter.getPrice()}"/>₫ </h3>
							      <small class="text-muted"><div style="font-size:12px;color: #85391F;margin-left: 20px"> (20% off)</div></small></p>
							      <div class="form-row">
							      		<form action="Detail" method="post">
							      	 		<input type="hidden" id="hidden" name="ID" value="${letter.getID()}">
							      	 		<button type="submit"  class="btn btn-light-blue btn-md">Chi tiết</button>
							      		</form>
							      		<form action="Order" method="post">
							      	 		<input type="hidden" id="hidden" name="ID" value="${letter.getID()}">
							      	 		<button type="submit" class="btn btn-light-blue btn-md">Đặt hàng</button>
							      		</form>
								  		
								  	</div>
							    </div>
							  </div>
						</div>
					</c:forEach>
					
  		</div>
  		
  	</div>
  	<div class="row">
  	<div class="col-sm-4"></div>
  	<div class="col-sm-8 ">
  		<ul class="pagination pagination-sm d-flex flex-row flex-wrap my-flex-container"  >
  		<c:forEach var="i" begin="1" end="${page}">
  			<c:choose>
		     	<c:when test = "${i<9}">
		            <li class=" page-item p-2 my-flex-item">
		            <a class="paging-item page-link mr-3 bg-info text-white" href="${i}">${i}</a>
		            </li>
		         </c:when>
		         <c:otherwise>
		            <li class="page-item  p-2 my-flex-item"><a class="paging-item page-link mr-2 bg-info text-white" href="${i}">${i}</a></li>
		         </c:otherwise>
		      </c:choose>
		    
		 </c:forEach>
		  </ul>
  	</div>
  	</div>
	<div class="row pb-3">
		<div class="col-sm-4 col-md-4" style="padding: 22% 0px 0px 10%">
			<img src="<c:url value="../resourcesHome/images/logo/nxbgd.jpg"/>" width="20%" height="width*20%">
	   		<img src="<c:url value="../resourcesHome/images/logo/nxbtre.jpg"/>" width="20%" height="width*20%">
	   		<img src="<c:url value="../resourcesHome/images/logo/nxbtt.jpg"/>" width="20%" height="width*20%">
		</div>
		<div class="col-sm-8 col-md-8 ads" >
			<a href=#><img src="<c:url value="../resourcesHome/images/sach1.jpg"/>" alt="ads"  /></a>
		</div>
	</div>
</div>



<!-- Footer -->
<footer class="page-footer font-small mdb-color lighten-3 pt-4" >

  <!-- Footer Links -->
  <div class="container text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 mr-auto my-md-4 my-0 mt-4 mb-1">

        <!-- Content -->
        <h5 class="font-weight-bold text-uppercase mb-4">Welcome</h5>
        <p style="font-family: tahoma">Hãy đọc một giờ mỗi ngày về lĩnh vực bạn đã lựa chọn. Điều này tương đương khoảng một cuốn sách mỗi tuần, năm mươi cuốn sách mỗi năm, và sẽ đảm bảo cho thành công của bạn.</p>
        <i  style="font-family: Times, "Times New Roman", serif;">Đây là một trang web cung cấp các loại sách mới nhất và thường xuyên ưu đãi dành cho khách hàng </i>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none">

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 mx-auto my-md-4 my-0 mt-4 mb-1">

        <!-- Links -->
        <h5 class="font-weight-bold text-uppercase mb-4">About</h5>

        <ul class="list-unstyled">
          <li>
            <p>
              <a href="#!">Trang chủ</a>
            </p>
          </li>
          <li>
            <p>
              <a href="#!">Liên hệ</a>
            </p>
          </li>
          <li>
            <p>
              <a href="#!">Sách mới</a>
            </p>
          </li>
          
        </ul>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none">

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">

        <!-- Contact details -->
        <h5 class="font-weight-bold text-uppercase mb-4">Address</h5>

        <ul class="list-unstyled">
          <li>
            <p>
              <i class="fas fa-home mr-3"></i>Scetpa building, 19A Cộng Hòa, Street, Tân Bình, Hồ Chí Minh</p>
          </li>
          <li>
            <p>
              <i class="fas fa-envelope mr-3"></i> lenguyenthanh102@gmail.com</p>
          </li>
          <li>
            <p>
              <i class="fas fa-phone mr-3"></i> +84 946 046 279</p>
          </li>
          <li>
            <p>
              <i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
          </li>
        </ul>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none">

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 text-center mx-auto my-4">

        <!-- Social buttons -->
        <h5 class="font-weight-bold text-uppercase mb-4">Follow Us</h5>

        <!-- Facebook -->
        <a type="button" class="btn-floating btn-fb">
          <i class="fab fa-facebook-f"></i>
        </a>
       
        <!-- Google +-->
        <a type="button" class="btn-floating btn-gplus">
          <i class="fab fa-google-plus-g"></i>
        </a>
        

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> MDBootstrap.com</a>
  </div>
  <!-- Copyright -->

</footer>


<!-- Footer -->
</body>
</html>