<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['memi'];
$a = $_POST['code'];
$b = $_POST['name'];
$c = $_POST['exdate'];
$d = $_POST['price'];
$e = $_POST['qty'];
$f = $_POST['o_price'];
$g = $_POST['profit'];
$h = $_POST['date_arrival'];
$i = $_POST['sold'];
$j = $_POST['varietal'];
$k = $_POST['vintage'];
$l = $_POST['description'];

// query
$sql = "UPDATE products 
        SET product_code=?, product_name=?, expiry_date=?, price=?, qty=?, o_price=?, profit=?, date_arrival=?, qty_sold=?, varietal=?, vintage=?, description=?
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$f,$g,$h,$i,$j,$k,$l,$id));
header("location: products.php");

?>