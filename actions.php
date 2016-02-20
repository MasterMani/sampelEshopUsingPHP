<?
	include("./includes/dbConn.php");
	$posted = $_POST['allData'];
	$keys = array_keys($posted);
	if(count($keys) ==2){
		foreach ($posted['categoryData'] as $cat) {
			foreach ($posted['brandData'] as $brnd) {
				$filterQuery = "SELECT * FROM `productDb` WHERE sCat LIKE \"$cat\" AND brand LIKE \"$brnd\"";
				$filterResult = mysqli_query($conn, $filterQuery);
				resultPrinter($filterResult);
			}
		}
	}elseif(count($keys) == 1){
		if(array_key_exists('brandData', $posted)){
			filterData($posted['brandData'], " brand ", $conn);	
		}elseif(array_key_exists('categoryData', $posted)){
			filterData($posted['categoryData'], " sCat ", $conn);
		}
	}

	function filterData($data, $column, $conn){
		foreach ($data as $value) {
			$filterQuery = "SELECT * FROM `productDb` WHERE".$column."LIKE \"$value\"";
			$filterResult = mysqli_query($conn, $filterQuery);
			resultPrinter($filterResult);
		}

	}

	function resultPrinter($filterResult){
		while($filterProd = mysqli_fetch_assoc($filterResult)){
			$var1 = "<li class=\"prodDiv\">";
			$var2 = "<h2 class=\"title\">".$filterProd['title']."</h2>";
			$var3 = '<div class="brand">'.$filterProd['brand'].'</div>';
			$var4 = '<div class="sku">'.$filterProd['sku']."</div>";
			$var5 = '<div class="sPrice">'.$filterProd['sPrice']."</div>";
			$var6 = '<div class="prodImg"><img src="'.$filterProd['imageUrl'].'"></div>';
			$var7 = "</li>";
			print $var1.$var6.$var2.$var3.$var4.$var5.$var7;
		}
	}
?>