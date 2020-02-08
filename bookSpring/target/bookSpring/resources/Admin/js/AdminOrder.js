$(".modal-Edit").on("click",function(){
	var id =$(this).attr("data-id");
	var createDate =$(this).attr("data-createdate");
	var Total = $(this).attr("data-total");
	
	$("#EditCreateDateInput").attr("value",createDate);
	$("#EditTotalInput").attr("value",Total);
	
	var urlWithoutId = $("#EditOrderForm").attr("action");
	var urlWithId = urlWithoutId + id;
	
	$("#EditOrderForm").attr("action",urlWithId);
	
});



$(".modal-Delete").on("click",function(){
	var id =$(this).data("id");
	var urlWithoutId = $("#OrderDeleteForm").attr("action");
	var urlWithId = urlWithoutId + id;
	
	$("#OrderDeleteForm").attr("action",urlWithId);
	
});
