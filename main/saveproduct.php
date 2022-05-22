<?php
session_start();
include('../connect.php');
$a = $_POST['code'];
$b = $_POST['name']; 
$c = $_POST['exdate'];
$d = $_POST['price'];
$e = $_POST['qty'];
$f = $_POST['o_price'];
$g = $_POST['profit'];
$h = $_POST['date_arrival'];
$i = $_POST['qty_sold'];
$j = $_POST['varietal'];
$k = $_POST['vintage'];
$l = $_POST['description'];
// query
$sql = "INSERT INTO products (product_code,product_name,expiry_date,price,qty,o_price,profit,date_arrival,qty_sold,varietal,vintage,description) VALUES (:a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k,:l)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g,':h'=>$h,':i'=>$i,':j'=>$j,':k'=>$k,':l'=>$l));
header("location: products.php");
?>