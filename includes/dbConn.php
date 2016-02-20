<?php
	$host = "localhost";
	$user = "testUser";
	$pass = "trytry";
	$dbName = "testDB";

	$conn = mysqli_connect($host, $user, $pass, $dbName);
	$allProQuery = "SELECT * FROM productDb ";
	$allProResult = mysqli_query($conn, $allProQuery);
	$brandListQuery = "SELECT DISTINCT(brand) FROM `productDb`";
	$brandResult = mysqli_query($conn, $brandListQuery);
	$catListQuery = "SELECT DISTINCT(sCat) FROM `productDb`";
	$catResult = mysqli_query($conn, $catListQuery);
?>