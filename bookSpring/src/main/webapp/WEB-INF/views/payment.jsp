<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Thanh toán</title>

<!-- 	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
   -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


 
<link rel="stylesheet" type="text/css" href="<c:url value="resourcePayment/payment.css"/>"></link>
<script type="text/javascript" src="<c:url value="resourcePayment/payment.js"/>"></script>

<!------ Include the above in your HEAD tag ---------->
</head>
<body>

<%@ include file="HeaderHome.jsp" %>
  <div class="container" style="color: white; margin-left: 35%; padding: 30px">
    <h2  style="font-weight: bold; padding-left: 10% ">Tiến hành đặt hàng</h2> 
    <div class="stepwizard col-md-offset-3" style="display: none">
      <div class="stepwizard-row setup-panel">
        <div class="stepwizard-step">
          <a href="#step-1" type="button" class="btn btn-primary ">1</a>
        </div>
      <div class="stepwizard-step">
          <a href="#step-2" type="button" class="btn btn-default " disabled="disabled">2</a>
      </div>
      <div class="stepwizard-step">
        <a href="#step-3" type="button" class="btn btn-default " disabled="disabled">3</a>
      </div>
    </div>
  </div>
  
  <form action="/bookSpring/payment/add-payment" method="POST" class="col-sm-12 col-md-12">
    <div class="row setup-content" id="step-1">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h5 style="font-weight: bold;"> Bước 1</h5>
          <div class="form-group" style="opacity: 0; visibility: hidden; display: none;">
            <input name="ID" type="text" value = "${acdt[0].getID()}" />
          </div>
          <div class="form-group">
            <label class="control-label">Họ tên</label>
            <input name="Name" maxlength="100" type="text" required="required" class="form-control" value = "${acdt[0].getName()}" />
			
        
          </div>
          <div class="form-group">
            <label class="control-label">Email</label>
            <input name="Email" maxlength="100" type="text" required="required" class="form-control"  value = "${acdt[0].getEmail()}"/>
          </div>
          <div class="form-group">
            <label class="control-label">Số điện thoại</label>
            <input name="PhoneNumber" type="text" required="required" class="form-control" value="${acdt[0].getPhoneNumber()}" />
          </div>
              <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" style="font-size: 10px;">Tiếp tục<i class="fa fa-angle-right"></i></button>
        </div>
      </div>
    </div>
     
    <div class="row setup-content" id="step-2">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h5 style="font-weight: bold;"> Bước 2</h5>
          <div class="form-group">
            <label class="control-label" >Địa chỉ nhận hàng</label>
            <input name="HomeAddress" maxlength="200" type="text" required="required" class="form-control" value ="${acdt[0].getHomeAddress()}"/>
          </div>
          <div class="form-group">
            <label class="control-label">Hình thức giao hàng</label>
            <input type="text" name="" class="form-control" value="Ship COD" readonly="true">
          </div>
              <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" style="font-size: 10px;">Tiếp tục<i class="fa fa-angle-right"></i></button>
        </div>
      </div>
    </div>
    
    <div class="row setup-content" id="step-3">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h5 style="font-weight: bold;">Bước 3</h5>
          <input class="btn btn-success btn-lg pull-right payment" type="submit" style="font-size: 12px" value="Xác nhận mua hàng"/>
        </div>
      </div>
    </div>
  </form>
  
  <script type="text/javascript">
  $('.payment').click(function(event) {
	  alert("Mua hàng thành công\nQuay về trang chủ");
	});
  </script>
  
</div>

<%@ include file="FooterHome.jsp" %>




</body>
</html>








