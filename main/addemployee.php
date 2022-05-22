<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveemployee.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Employee</h4></center>
<hr>
<div id="ac">
<span>Full Name : </span><input type="text" style="width:265px; height:30px;" name="name" placeholder="Full Name" Required/><br>
<span>Email : </span><input type="email" style="width:265px; height:30px;" name="email" placeholder="email"/><br>
<span>Address : </span><input type="text" style="width:265px; height:30px;" name="address" placeholder="address"/><br>
<span>Salary : </span><input type="number" style="width:265px; height:30px;" name="salary" placeholder="salary"/><br>
<span>Start Date : </span><input type="date" style="width:265px; height:30px;" name="entry" placeholder="entry"/><br>
<span>Position : </span>

<select name="position" style="width:265px; height:30px; margin-left:-5px;" >
	<option>--</option>
        <option>Cleaner</option>
        <option>admin</option>
        <option>receptionist</option>
	</select><br>

<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save Employee</button>
</div>
</div>
</form>