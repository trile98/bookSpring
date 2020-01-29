$("#chooseProductBtn").click(function(){
	var productId = $("input[name=productInOrder]:checked").attr("data-id");
	var title = $("input[name=productInOrder]:checked").attr("data-title");
	var price = $("input[name=productInOrder]:checked").attr("data-price");
	
	$("#ProductIdInput").attr("value",productId);
	$("#ProductTitleInput").attr("value",title);
	$("#ProductPriceInput").attr("value",price);
	
	
});

