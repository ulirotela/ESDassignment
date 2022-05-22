<?php
session_start();
include('../connect.php');
$a = $_POST['name'];
$b = $_POST['position'];
$c = $_POST['email'];
$d = $_POST['address'];
$e = $_POST['salary'];
$f = $_POST['entry'];
//Query
$sql = "INSERT INTO employee (name,position,email,address,salary,entry) VALUES (:a,:b,:c,:d,:e,:f)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f));
header("location: employee.php");


?>
