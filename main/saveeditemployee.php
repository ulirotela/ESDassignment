<?php
// configuration
include('../connect.php');
// new data
$id = $_POST['memi'];
$a = $_POST['name'];
$b = $_POST['address'];
$c = $_POST['position'];
$d = $_POST['email'];
$e = $_POST['salary'];
$f = $_POST['entry'];
// query
$sql = "UPDATE employee 
        SET name=?, address=?, position=?, email=?, salary=?, entry=?
        WHERE id=?";
$q = $db->prepare($sql);
$q -> execute(array($a,$b,$c,$d,$e,$f,$id));   
header("location: employee.php");
?>