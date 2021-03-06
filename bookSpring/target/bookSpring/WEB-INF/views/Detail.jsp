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
<link href="<c:url value="resourcesBookDetail/templatemo_style.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="resourcesBookDetail/styles.css"/>" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.9.0/css/mdb.min.css" rel="stylesheet">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/js/mdb.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>

<script type="text/javascript" src="<c:url value="resourcesBookDetail/js/custom.js"/>"></script>
 <style>
  /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
    top: 0;
    width: 100%;
    z-index: 9999 !important;
  }

  .affix + .container-fluid {
    padding-top: 70px;
  }
  </style>
</head>
  
<body style="background-color: #4B4743">
<jsp:include page="HeaderHome.jsp" />
<div class="container" style="background-color: #1C1C1B">

    




  	
  	<div class="row" style="padding:10px 40px;">	
  		<c:forEach items="${Product}" var="product" begin="0" end ="9" step="2">
  			<div class="col-sm-4 col-md-4">
				<div class="card-deck" style="width:80%;overflow: hidden;">
						<div class="card mb-3">
							<div style="align-self: center" >
							      <img class="card-img-top" src="${product.getImageLink()}" alt="Card image cap" style="height: 300px; width: 350px">
							      <a href="#!">
							        <div class="mask rgba-white-slight"></div>
							      </a>
							</div>
						</div>
				</div>
  			</div>
  			<div  >
  				<div  >		
  					<p  style="color: #FFFFFF; height: 30px;  font-family: Arial">${product.getTitle()}</p> 
  					
  					<span>
  						<i style="font-family: Arial;color:#FFFFFF;">Tác giả: ${product.getAuthor()}</i>
  					</span>
  					  <p style="color:#1C1C1B;" >&nbsp &nbsp </p> 
  					<span>
  						<i style="font-family: Arial;color:#FFFFFF;">Bìa: ${product.getCover() }</i>
  					</span>
  						 <p style="color:#1C1C1B;" >&nbsp &nbsp </p>
  					<span>
  						<i style="font-family: Arial;color:#FFFFFF;">Ngày xuất bản: ${product.getPublishDate() }</i>
  					</span>
  				</div>
  				<hr style="background-color: #FFFFFF">
  				<div>
  					<p class="card-text "><h3 style="color: #FFFFFF">Giá: <fmt:formatNumber type="number" maxFractionDigits="3" value="${product.getPrice()}"/>₫ </h3>
  				</div>
  				
  				<div>
  					<c:choose>
				    <c:when test="${empty user}">
					        <a href="user/signin"><button type="submit" class="btn btn-light-blue btn-md">Đặt hàng</button></a>
					    </c:when>
					    <c:otherwise>
					    	<form action="add-to-cart" method="post">
				      	 		<input type="hidden" id="hidden" name="ID" value="${letter.getID()}">
				      	 		<button type="submit" class="btn btn-light-blue btn-md">Đặt hàng</button>
				      		</form>
					    </c:otherwise>
					</c:choose>
  				</div>
  				
  			</div>
  		</c:forEach>

  	</div>
  	<div class="row">
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