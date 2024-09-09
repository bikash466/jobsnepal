<?php
require_once("includes/config.php");

if(!empty($_POST["Ph"])) {
	$Ph= $_POST["Ph"];
	if (filter_var($Ph, FILTER_VALIDATE_EMAIL)===false) {

		echo "error : You did not enter a valid email.";
	}
else {
$sql ="SELECT Email FROM tblemployers WHERE Email=:Ph";
$query= $dbh -> prepare($sql);
$query-> bindParam(':Ph', $Ph, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
echo "<span style='color:red'> Email already exists</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{

	echo "<span style='color:green'> Email available</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
}
