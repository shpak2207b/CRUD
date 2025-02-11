<?php
//БДШКИ
require_once"core/connect.php";

$products = mysqli_query($connect, "SELECT * FROM products");

$product_list = [];
while($product = mysqli_fetch_assoc($products)){
$product_list[] = $product;
}


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
        <tr>
            <th scope="col">id</th>
            <th scope="col">product name</th>
            <th scope="col">description</th>
            <th scope="col">price</th>
            <th scope="col">count</th>
            <th scope="col">actions</th>


        </tr>
        </thead>
        <tbody>
        <?php
        foreach ($product_list as $product) {
            ?>
            <tr>
                <th scope="row"><?= $product["id"] ?></th>
                <td>
                    <a href="product.php?id=<?= $product["id"] ?>"><?= $product["title"] ?></a>
                </td>
                <td><?= $product["title"] ?></td>

                <td><?= $product["description"] ?></td>
                <td><?= $product["price"] ?></td>
                <td><?= $product["count"] ?></td>

                <td><a href="editProduct.php?id=<?= $product["id"] ?>" class="btn btn-success">edit</a>
<a href="core/products/delete.php?id=<?= $product["id"] ?>" class="btn btn-danger">remove</a></td>

            </tr>
        <?php } ?>
        </tbody>
    </table>
    <form action="core/products/store.php" method="post">
        <div class="form-group">
            <label for="title">product name</label>
            <input type="text" class="form-control" name="name" id="title"  placeholder="product...">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">product description</label>
            <textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="3"></textarea>

        <form>
            <div class="row">
                <div class="col ">
                    <label for="exampleInputEmail1">price</label>
                    <input type="number" name="price" class="form-control" placeholder="Price">
                </div>
                <div class="col" >
                    <label for="exampleInputEmail1">count</label>
                    <input type="number" name="count" class="form-control" placeholder="Count">
                </div>
            </div>
        </form>

        <button type="submit" class="btn btn-primary mt-3">Add</button>
    </form>
</div>
</body>
</html>
