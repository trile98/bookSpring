<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/master site.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Book shop</title>
	<meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML" />
	<meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website" />
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="<c:url value="resourcesHome/css/quake.slider.css"/>" rel="stylesheet" type="text/css">
	<link href="<c:url value="resourcesHome/skins/plain/quake.skin.css"/>" rel="stylesheet" type="text/css">
	<link href="<c:url value="resourcesHome/templatemo_style.css"/>" rel="stylesheet" type="text/css">
	<script src="<c:url value="resourcesHome/js/jquery.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="resourcesHome/js/quake.slider-min.js"/>" type="text/javascript"></script>
    <script type="text/javascript">
$(document).ready(function () {
            $('.quake-slider').quake({
                thumbnails: true,
                animationSpeed: 500,
                applyEffectsRandomly: true,
                navPlacement: 'inside',
                navAlwaysVisible: true,
                captionOpacity: '0.3',
                captionsSetup: [
                                 {
                                     "orientation": "top",
                                     "slides": [0, 1],
                                     "callback": captionAnimateCallback
                                 },
                                  {
                                      "orientation": "left",
                                      "slides": [2, 3],
                                      "callback": captionAnimationCallback1
                                  }
                                  ,
                                  {
                                      "orientation": "bottom",
                                      "slides": [4, 5],
                                      "callback": captionAnimateCallback
                                  }
                                  ,
                                  {
                                      "orientation": "right",
                                      "slides": [6, 7],
                                      "callback": captionAnimationCallback1
                                  }
                                ]
            });
            function captionAnimateCallback(captionWrapper, captionContainer, orientation) {
                captionWrapper.css({ left: '-990px' }).stop(true, true).animate({ left: 0 }, 500);
                captionContainer.css({ left: '-990px' }).stop(true, true).animate({ left: 0 }, 500);
            }
            function captionAnimationCallback1(captionWrapper, captionContainer, orientation) {
                captionWrapper.css({ top: '-330px' }).stop(true, true).animate({ top: 0 }, 500);
                captionContainer.css({ top: '-330px' }).stop(true, true).animate({ top: 0 }, 500);
            }
        });
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
    </script>
    
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="styles.css" rel="stylesheet" type="text/css">
   <script src="script.js"></script>
</head>
<body onLoad="MM_preloadImages('images/book-banner-4.jpg')">
<div id="templatemo_container"><img src="<c:url value="resourcesHome/images/banner1.jpg"/>" width="960" height="162"></div>
<div id="templatemo_container" >
		<div class="search-container">
		<form action="#" method="post">
		  <input type="text" name="search" id="search" placeholder="Search..">
		</form>
		</div>
		<a href="#"><img alt="Giỏ hàng" style="height: 35px;float: right;margin-right: 10px"  src="<c:url value="resourcesHome/images/buttonShop.png"/>"></a>
		<input type="submit"  class="nut" value="SignIn" >
		<input type="submit" class="nut" value="SignUp">

</div>
<div id="templatemo_container">
  <div id="cssmenu">
   <ul>
   <li><a href="Home" class="current">Trang chủ</a></li>
            <li><a href="Intro">Giới thiệu</a></li>
            <li><a href="Books">Sách</a></li>            
            <li><a href="sachmoi.html">Sách mới</a></li>  
            <li><a href="trogiup.html">Trợ giúp</a></li> 
            <li><a href="lienhe.html">Liên hệ</a></li>	</ul>
    </div> <!-- end of menu -->

    <!-- Quake Image Slider -->
<div class="quake-slider" id="templatemo_header">
        <div class="quake-slider-images"> 
        	<a target="_blank" href="javascript:"> <img src="<c:url value="resourcesHome/images/nature/image1.jpg"/>" alt="" /></a>
        	<a target="_blank" href="javascript:"> <img src="<c:url value="resourcesHome/images/nature/image2.jpg"/>" alt="" /> </a>
        	<a target="_blank" href="javascript:"> <img src="<c:url value="resourcesHome/images/nature/image3.jpg"/>" alt="" /> </a>
        	<a target="_blank" href="javascript:"> <img src="<c:url value="resourcesHome/images/nature/image4.jpg"/>" alt="" /> </a>
        	<a target="_blank" href="javascript:"> <img src="<c:url value="resourcesHome/images/nature/image5.jpg"/>" alt="" /> </a>
		</div>
</div>      
   <!-- /Quake Image Slider -->     
<div id="templatemo_content">
    	
    <div id="templatemo_content_left">
        	<div class="templatemo_content_left_section">
            	<h1>Danh mục sách</h1>
                <ul>
                    <li><a href="kinhte.html">Sách Kinh tế</a></li>
                    <li><a href="vanhoctrongnuoc.html">Sách Văn Học Trong Nước</a></li>
                    <li><a href="vanhocnuocngoai.html">Sách Văn Học Nước Ngoài</a></li>
                    <li><a href="thuongthuc.html">Sách Thường Thức - Đời Sống</a></li>
                    <li><a href="thieunhi.html">Sách Thiếu Nhi</a></li>
                    <li><a href="tinhoc-ngoaingu.html">Sách Tin Học - Ngoại Ngữ</a></li>
                    <li><a href="giaokhoa-giaotrinh.html">Sách Giáo Khoa - Giáo Trình</a></li>
                    <li><a href="chuyennganh.html">Sách Chuyên Ngành</a></li>
                    <li><a href="tapchi.html">Tạp Chí</a></li>
            	</ul>
            </div>
			<div class="templatemo_content_left_section">
            	<h1>Bestsellers</h1>
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
            </div>
    </div> <!-- end of content left -->
        
        <!-- InstanceBeginEditable name="content" -->
        <div id="templatemo_content_right">
        	<p>&nbsp;</p>
        	<p>CTbookstore là công ty hàng đầu trong lĩnh vực kinh doanh sách trực tuyến tại Việt Nam với website là <a href="http://www.vinabook.com/">www.CTbookstore.com</a> hoạt động từ năm 2014</p>
        	<p>Mục tiêu của chúng tôi là luôn mở rộng thị trường sách online cùng với đà phát triển của công nghệ thông tin. Để thực hiện mục tiêu đó, chúng tôi đã có những nhận thức đúng đắn về vai trò 
        	của nguồn nhân lực trong xây dựng và phát triển kinh doanh. Chúng tôi đã và đang không ngừng hoàn thiện hơn nữa môi trường làm việc với các trang thiết bị hiện đại, cung cách làm việc hiệu quả 
        	để ngày càng hoàn thiện việc phục vụ khách hàng.</p>
        	  Đội ngũ <strong>CTbookstore</strong>: <br>
        	  - Trẻ, năng động, sáng tạo cùng với phong cách làm việc chuyên nghiệp hy vọng sẽ đáp ứng được sự mong muốn của khách hàng, đặc biệt trong việc mua sách trực tuyến.<br>
        	<br>
        	  Sứ mệnh <strong>CTbookstore</strong>:<br>
        	  - Phục vụ khách hàng nhanh nhất và tốt nhất.<br>
        	  - Không ngừng duy trì, phát triển và mở rộng phạm vi phục vụ sách đến mọi miền đất nước không phân biệt vị trí địa lý <br>
        	<br>
        	  Phong cách <strong>CTbookstore</strong>: <br>
        	  - Với đội ngũ nhân viên chuyên nghiệp, chúng tôi phục vụ khách hàng từ 8 sáng đến 9 tối (Thứ 2 đến Chủ Nhật hàng tuần). <br>
        	<br>
       	    Dịch vụ <strong>CTbookstore</strong>: <br>
        	  - Đặt hàng trực tuyến, giao hàng và thu tiền tận nơi trong và ngoài nước. <br>
        	  - CTbook có mặt trên khắp nẻo đường, qua kênh phân phối của bưu chính Việt Nam. <br>
        	  - Đội ngũ nhân viên giao hàng trong thành phố thân thiện và tận tâm. <br>
        	 
			<div class="cleaner_with_width">
				&nbsp;
			</div>
        	<a href="#"><img src="<c:url value="resourcesHome/images/sach1.jpg"/>" alt="ads" width="671" height="192" /></a> 
		</div>
        
<!-- InstanceEndEditable --></div> 
    <!-- end of content right -->
    
   		<div  style="padding:10px 0 10px 30px;clear: both;">&nbsp;
	   	<img src="<c:url value="resourcesHome/images/logo/nxbgd.jpg"/>" width="57" height="55">
	   	<img src="<c:url value="resourcesHome/images/logo/nxbtre.jpg"/>" width="57" height="55">
	   	<img src="<c:url value="resourcesHome/images/logo/nxbtt.jpg"/>" width="57" height="55">
   	</div>
    
    <div id="templatemo_footer">
 <a href="Home">Trang chủ</a> | <a href="#">Tìm kiếm</a> | <a href="sach.html">Sách</a> | <a href="sachmoi.html">Sách mới</a> | <a href="#">FAQs</a> | <a href="lienhe.html">Liên hệ</a><br />
        Copyright © 2014 <a href="#"><strong>CT Book store</strong></a> | Designed by <a href="http://www.templatemo.com" target="_parent" title="free css templates">CT software</a>	
    </div> 
    <!-- end of footer -->
     
</div> <!-- end of content -->
 </div>
</body>
<!-- InstanceEnd --></html>