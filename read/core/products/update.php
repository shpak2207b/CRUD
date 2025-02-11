<?php

print_r($_POST);
$mysql = require_once "../connect.php";
$productId = $_POST["id"];

$productName = $_POST["title"];
$productDescription = $_POST["description"];
$productPrice = $_POST["price"];
$productCount = $_POST["count"];

$sql = "UPDATE products SET title='$productName',description='$productDescription',price='$productPrice',count='$productCount' WHERE id = $productId";

$query = mysqli_query($mysql, $sql);

if (mysqli_num_rows($product) === 0) {
    echo "продукт не найден";
}
header("Location:/product.php?id=$productId");
$productData = mysqli_fetch_assoc($product);


