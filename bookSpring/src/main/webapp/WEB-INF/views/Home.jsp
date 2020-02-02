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

<script type="text/javascript" src="<c:url value="../resourcesHome/custom.js"/>"></script>

  
<body style="background-color: #4B4743">

<jsp:include page="preHeaderHome.jsp" /> 

<div class="container" style="background-color: #1C1C1B">

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
							      	
							      		<div>
							      	 		<span hidden class="ID">${letter.getID()}</span>
							      	 		<button type="submit"  class="btn btn-light-blue btn-md btn-giohang">Chi tiết</button>
							      		</div>
							      		<div>
							      	 		<span hidden class="ID">${letter.getID()}</span>
							      	 		<span hidden class="Title">${letter.getTitle()}</span>
							      	 		<span hidden class="ImageLink">${letter.getImageLink()}</span>
							      	 		<span hidden class="Price">${letter.getPrice()}</span>
							      	 		<button type="button" class="btn btn-light-blue btn-md btn-giohang">Đặt hàng</button>
							      		</div>
								  		
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
							      		<div>
							      	 		<input type="hidden" id="hidden" name="ID" value="${letter.getID()}">
							      	 		<button type="submit"  class="btn btn-light-blue btn-md btn-giohang">Chi tiết</button>
							      		</div>
							      		<div>
							      	 		<input type="hidden" id="hidden" name="ID" value="${letter.getID()}">
							      	 		<button type="button" class="btn btn-light-blue btn-md btn-giohang">Đặt hàng</button>
							      		</div>
								  		
								  	</div>
							    </div>
							  </div>
						</div>
					</c:forEach>
					
  		</div>
  		
  	</div>
  	<c:if test="${page>1}">
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
  	</c:if>
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



<jsp:include page="preFooterHome.jsp" /> 
</body>
</html>