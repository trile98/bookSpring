$(document).ready(function(){
	$(".btn-giohang").click(function(){
		var ID=$(this).parent().find(".ID").text();
		var Title=$(this).parent().find(".Title").text();
		var Img=$(this).parent().find(".ImageLink").text();
		var Price=$(this).parent().find(".Price").text();
		var SL=1;
		alert(ID+"-"+Title+"-"+Img+"-"+Price);
		$.ajax({
			url:"/bookSpring/api/ThemGioHang",
			type:"GET",
			data:{
				ID:ID,
				Title:Title,
				ImageLink:Img,
				Price:Price,
				soluong:SL
			},
			success :function(value){
				
			}
			
		})
	})
})