$(".modal-Delete").on("click",function(){
	var id =$(this).data("id");
	var urlWithoutId = $("#OrderDeleteForm").attr("action");
	var urlWithId = urlWithoutId + id;
	
	$("#OrderDeleteForm").attr("action",urlWithId);
	
});

$(".modal-Edit").on("click",function(){
	var id =$(this).attr("data-id");
	var orderId =$(this).attr("data-orderid");
	var productId = $(this).attr("data-productid");
	var quantity = $(this).attr("data-quantity");
	
	$("#EditODQuantity").attr("value",quantity);
//	
//	$("c:select.OrderIdSelect option."+orderId).attr("selected","selected");
//	
//	$("select.productSelect option."+productId).attr("selected","selected");
//	
//	
	
	var urlWithoutId = $("#EditOrderForm").attr("action");
	var urlWithId = urlWithoutId + id;
	
	$("#EditOrderForm").attr("action",urlWithId);
	
});

$("select.productSelect").change(function(){
	var productId = $("select.productSelect option:selected").attr("data-Pid");
	$("#EditODProductId").attr("value",productId);
	
});