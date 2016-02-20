<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>E-Shop Products</title>
	<link rel="stylesheet" href="./css/style.css">
	<script src="./js/jquery.js"></script>
</head>
<body>
	<?include("./includes/dbConn.php");?>
	<header>
		<div class="mainHeading">
			<h1>All Products</h1>
		</div>
	</header>
	<div id="container">
		<div id="filter">
			<div class="refineCat">
				<span class="head">Refine by Category</span>
				<?
					while($cat = mysqli_fetch_assoc($catResult)){
						$ct = $cat['sCat'];
						print '<input type="checkbox" value='.str_replace(" ", "_", $ct).'>';
						print '<span class="'.$ct.'">'.$ct.'</span><br />';
					}
				?>
			</div>

			<div class='refineBrand'> 
				<span class="head">Refine by Brand</span>
				<?
					while($brand = mysqli_fetch_assoc($brandResult)){
						$brd = $brand['brand'];
						print '<input type="checkbox" value='.str_replace(" ", "_", $brd).'>';
						print '<span class="'.$brd.'">'.$brd.'</span><br />';
					}
				?>
			</div>
		</div>
		<div id="prodMainContainer">
			<ul>
				<?	
					while($prod = mysqli_fetch_assoc($allProResult)){
						print "<li class=\"prodDiv\">";
						print '<div class="prodImg"><img src="'.$prod['imageUrl'].'"></div>';
						print "<h2 class=\"title\">".$prod['title']."</h2>";
						print '<div class="brand">'.$prod['brand'].'</div>';
						print '<div class="sku">'.$prod['sku']."</div>";
						print '<div class="sPrice">'.$prod['sPrice']."</div>";
						print "</li>";
					}
					 mysqli_close($conn);
				?>
			</ul>
		</div>
	</div>
	<footer>
		<div class="footText">
			<p> &copy; E-Shop.com</p>
		</div>
	</footer>
	<script type="text/javascript" src="./js/ajax.js"></script>
</body>
</html>