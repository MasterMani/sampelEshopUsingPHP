$(document).ready(function(){
	$('input[type=checkbox]').on('click', function(){
		if($('input:checked').length > 0){
			var brandData = [],
				categoryData = [],
				allData = {};

			$('.refineCat input:checked').each(function(){
				categoryData.push($(this).val());
			});
			$('.refineBrand input:checked').each(function(){
				brandData.push($(this).val());
			});
			var data = brandData.concat(categoryData);
			if(data.length < 4){
				$('.mainHeading h1').text("Showing products from: " + data.join(" , "));
			}else{
				$('.mainHeading h1').text("Showing products from: " + data[0] + " , " + data[1] + " , " + data[2] + "...") ;
			}
			allData["brandData"] = brandData;
			allData["categoryData"] = categoryData;
			$.post("./actions.php", {"allData" : allData}, function(response, status){
				if(response.length == 0){
					$("#prodMainContainer ul").html("<h1 style=\"margin:50px 0px 0px 100px;\"> No Records Found..</h1>");
					return;
				}
				$("#prodMainContainer ul").html(response);
				priceChange();
				imageChange();
			});
		}else{
			location.reload();
		}
	});

});

function priceChange(){
	$('.sPrice').each(function(i,e){
		var newPrice = $(this).text().replace(/./, "₹ ");
		$('.sPrice').eq(i).text(newPrice);
	});
}
function imageChange(){
	$('.prodDiv .prodImg > img').each(function(i,e){
		var newImg = $(this).attr('src').replace(/.*[^\/]*\//, "./images/");
		$('.prodDiv .prodImg > img').eq(i).attr('src', newImg);
	});
}
imageChange();
priceChange();