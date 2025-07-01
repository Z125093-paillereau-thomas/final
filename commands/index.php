<?php
$db = null;
require_once('../database.php');

$queryProducts = 'SELECT * FROM product_list ORDER BY product_id';
$statement1 = $db->prepare($queryProducts);
$statement1->execute();
$product_list = $statement1->fetchAll();
$statement1->closeCursor();

$queryUsers = 'SELECT * FROM users ORDER BY user_id';
$statement2 = $db->prepare($queryUsers);
$statement2->execute();
$users = $statement2->fetchAll();
$statement2->closeCursor();

$queryTransactionRows = 'SELECT * FROM transaction_rows ORDER BY transaction_row_id';
$statement3 = $db->prepare($queryTransactionRows);
$statement3->execute();
$transactionRows = $statement3->fetchAll();
$statement3->closeCursor();

$queryTransactions = 'SELECT * FROM transactions ORDER BY transaction_id';
$statement4 = $db->prepare($queryTransactions);
$statement4->execute();
$transactions = $statement4->fetchAll();
$statement4->closeCursor();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ecommerce</title>
    <link rel="stylesheet" href="commands.css"/>
</head>
<body>
    <nav></nav>
    <header></header>
    <main>
        <a href="http://localhost/ecommerce/commands/">
            <h1>Commands List</h1>
        </a>
        <div class="commands">
            <?php
            foreach ($users as $user) {
                echo '<div class="user">';
                echo '<h1>' . $user['user_name'] . '</h1>';
                foreach ($transactions as $transaction) {
                    if ($transaction['user_id'] == $user['user_id']) {
                        $price = 0;
                        echo '<h2>' . $transaction['transaction_date'] . '</h2>';
                        echo '<div class="transaction">';
                        foreach ($transactionRows as $transactionRow) {
                            if ($transactionRow['transaction_id'] == $transaction['transaction_id']) {
                                echo '<div class="transactionRow">';
                                $product = $product_list[$transactionRow['product_id']];
                                $price += $transactionRow['quantity'] * $product['price'];
                                echo "<img src=\"../images/" . $product['product_id'] . ".png\" alt=\"" . $product['product_name'] . " Image\">";
                                echo "<div>" . $product['product_name'] . " :     " . $product['price'] . " yen x" . $transactionRow['quantity'] . "</div>";
                                echo '</div>';
                            }
                        }
                        echo '<h1>'.$price.' yen</h1>';
                        echo '</div>';
                    }
                }
                echo '</div>';
            }
            ?>
        </div>
    </main>
    <footer></footer>
</body>
</html>
