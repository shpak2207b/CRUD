<?php
$product_name = $_POST["name"];
$product_description = $_POST["description"];
$price = $_POST["price"];
$count = $_POST["count"];

$mysql = require_once "../connect.php";

$sql = "INSERT INTO products (id, title, description, price, count) VALUES
    (NULL, '$product_name', '$product_description', $price, $count)";

mysqli_query($connect, $sql);
$product_id =  mysqli_insert_id($connect);