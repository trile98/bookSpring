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
<title>Giỏ hàng</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<c:url value="resourcePayment/cart.css"/>"></link>
<script type="text/javascript" src="<c:url value="resourcePayment/cart.js"/>"></script>
</head>
<body>

	<%@ include file="HeaderHome.jsp" %>
	<div class="container" style="padding: 20px; background-color: white">
		<h1 style="font-weight: bold; font-family: HelveticaNeue-Medium; color: brown">Giỏ hàng</h1>
    	<div class="shopping-cart">
 
	  <div class="column-labels">
	    <label class="product-image">Image</label>
	    <label class="product-details">Product</label>
	    <label class="product-price">Đơn giá</label>
	    <label class="product-quantity">Số lượng</label>
	    <label class="product-removal">Xóa</label>
	    <label class="product-line-price">Thành tiền</label>
	  </div>
	  
	  <c:forEach items="${giohang}" var="pd">	
	  
	  	<div class="product">
	    <div class="product-image">
	      <img src="${pd.getImageLink()}">
	    </div>
	    
	    <div class="product-details">
	      <div class="product-title">${pd.getTitle()}</div>
	    </div>
	    
	    <div class="product-price">${pd.getPrice()}</div>
	    
	    
		    <div class="product-quantity">
		      <input type="number" value="${pd.getCount()}" min="1" class="quantity" readonly="true">	    
		    </div>
		    <form action="delete-row-cart" method = POST>	
	    	<input type="hidden" value="${pd.getID()}" name="deleteID">
	    	<div class="product-removal">
	      		<button type="submit" class="remove-product">Xóa</button>
	    	</div>
	    	</form>
	    <div class="product-line-price">${pd.getPrice() * pd.getCount()}</div>
	  </div>
	 
	  </c:forEach>
	  
 <form action="../bookSpring/payment" method="post">
	  <div class="totals">
	    <div class="totals-item">
	      <label>Tạm tính:</label>
	      <div class="totals-value" id="cart-subtotal"></div>
	    </div>
	    <div class="totals-item">
	      <label>Ship COD</label>
	      <div class="totals-value" id="cart-shipping"></div>
	    </div>
	    <div class="totals-item totals-item-total">
	      <label>Tổng tiền</label>
	       
	      <div class="totals-value" id="cart-total">
	      </div>
	     
	     	   <input name="total" type="hidden" id="input-cart-total" readonly="true">
	     
	      
	      	
	    </div>
	  </div>
	  
	  
       
       
      <button class="checkout" type="submit"><a href="../bookSpring/payment" style="text-decoration: none;">Tiến hành đặt hàng</a></button>
 </form>
 
 <script type="text/javascript">
	  $( window ).on( "load", function() {
		  			
			var shippingRate = 15000.00; 
			var fadeTime = 300;
			var subtotal = 0;
				   
			  /* Sum up row totals */
			  $('.product').each(function () {
			    subtotal += parseFloat($(this).children('.product-line-price').text());
			  });
			   
			  /* Calculate totals */
			 
			  var shipping = (subtotal > 0 ? shippingRate : 0);
			  var total = subtotal + shipping;
			   
			  /* Update totals display */
			  $('.totals-value').fadeOut(fadeTime, function() {
			    $('#cart-subtotal').html(subtotal.toFixed(2));			    
			    $('#cart-shipping').html(shipping.toFixed(2));
			    $('#cart-total').html(total.toFixed(2));
			    
			    var x = $('#cart-total').text();
			
			    if(total == 0){
			      $('.checkout').fadeOut(fadeTime);
			    }else{
			      $('.checkout').fadeIn(fadeTime);
			    }
			    $('.totals-value').fadeIn(fadeTime);
			  });
		});
	  </script>
	</div> 
</div>

	
	
	<%@ include file="FooterHome.jsp" %>
</body>
</html>