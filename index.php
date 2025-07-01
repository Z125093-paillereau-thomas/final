<?php
$db = null;
require_once('database.php');

$product_name_q = filter_input(INPUT_GET, 'q');
$queryProducts = 'SELECT * FROM product_list WHERE product_name LIKE :product_name_q ORDER BY product_id';
$statement1 = $db->prepare($queryProducts);
$statement1->bindValue(':product_name_q', '%' . $product_name_q . '%');
$statement1->execute();
$product_list = $statement1->fetchAll();
$statement1->closeCursor();

$queryCategories = 'SELECT * FROM food_categories ORDER BY category_id';

$statement2 = $db->prepare($queryCategories);
$statement2->execute();
$product_categories = $statement2->fetchAll();
$statement2->closeCursor();


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ecommerce</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <nav></nav>
    <header></header>
    <main>
        <a href="">
            <h1>Product List</h1>
        </a>
        <nav>
            <form action="" method="GET">
                <input type="search" name="q" placeholder="Search a product...">
                <button type="submit">Search</button>
            </form>
        </nav>
        <div class="products">
            <?php
            if ($product_list == NULL)
                echo "Product Not Found";
            foreach ($product_list as $product) : ?>
                <div class="product">
                    <?php echo "<img src=\"images/".$product['product_id'].".png\" alt=\"".$product['product_name']." Image\">"; ?>
                    <div class="product_text">
                        <?php echo $product['product_name']; ?><br>
                        <?php echo $product['price']." yen"; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>
    <footer></footer>
</body>
</html>
