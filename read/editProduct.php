<?php
//БДШКИ
require_once"core/connect.php";
$productId = $_GET["id"];

$sql = "SELECT * FROM products WHERE id = $productId";
$product = mysqli_query($connect, $sql);

if (mysqli_num_rows($product) === 0) {
    echo "продукт не найден";
}

$productData = mysqli_fetch_assoc($product);

?>

<<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>pro</title>
</head>
<body>
<div class="container">
    <table class="table">
        <thead>
        <h3>update php</h3>
        </thead>
        <tbody>
        </tbody>
    </table>
    <form action="core/products/update.php" method="post">
        <input type="hidden" name="id" value="<?= $productData["id"] ?>">
        <div class="form-group">
            <label for="title">product name</label>
            <input type="text" class="form-control" name="name" value="<?= $productData["title"] ?>" id="title"  placeholder="product...">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">product description</label>
            <textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="3">
                <?= $productData["description"] ?>
            </textarea>

                <div class="row">
                    <div class="col ">
                        <label for="exampleInputEmail1">price</label>
                        <input type="number" name="price" value="<?= $productData["price"] ?>" class="form-control" placeholder="Price">
                    </div>
                    <div class="col" >
                        <label for="exampleInputEmail1">count</label>
                        <input type="number" name="count" value="<?= $productData["count"] ?>" class="form-control" placeholder="Count">
                    </div>
                </div>


            <button type="submit" class="btn btn-success btn-primary mt-3">save</button>
    </form>
</div>
</body>
</html>
