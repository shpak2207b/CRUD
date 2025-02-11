<?php
$product_id = $_GET['id'];

require_once "core/connect.php";
$sql = "SELECT * FROM products WHERE id = $product_id";
$product = mysqli_query($connect, $sql);
$product_data = mysqli_fetch_assoc($product);
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
<div class="container">
    <h1><?= $product_data["title"]?></h1>
    <p><?= $product_data["description"]?></p>
    <p><?= $product_data["price"]?></p>
    <p><?= $product_data["count"]?></p>
</div>
</body>
</html>