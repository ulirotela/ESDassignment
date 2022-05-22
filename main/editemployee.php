<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM employee WHERE id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditemployee.php" method="post">
<center><h4><i class="icon-edit icon-large"></i> Edit User</h4></center>
<hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>Full Name : </span><input type="text" style="width:265px; height:30px;" name="name" value="<?php echo $row['name']; ?>" /><br>
<span>Position : </span>
<select name="position" style="width:265px; height:30px; margin-left:-5px;" >
	<option><?php echo $row['position']; ?></option>
        <option>Cashier</option>
        <option>admin</option>
        <option>receptionist</option>
	</select><br>
<span>Email : </span><input type="email" style="width:265px; height:30px;" name="email" value="<?php echo $row['email']; ?>" /><br>
<span>Address : </span><input type="text" style="width:265px; height:30px;" name="address" value="<?php echo $row['address']; ?>" /><br>
<span>Salary : </span><input type="number" style="width:265px; height:30px;" name="salary" value="<?php echo $row['salary']; ?>" /><br>
<span>Start Date : </span><input type="date" style="width:265px; height:30px;" name="entry" value="<?php echo $row['entry']; ?>" /><br>

<div style="float:right; margin-right:10px;">

<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save Changes</button>
</div>
</div>
</form>
<?php
}
?>