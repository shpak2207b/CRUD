<?php

$productId = $_GET["id"];

$mysql = require_once "../connect.php";
$sql = "DELETE FROM products WHERE id = $productId";
mysqli_query($mysql, $sql);
header("Location: /");