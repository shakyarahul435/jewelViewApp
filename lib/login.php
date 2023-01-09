<?
	include "connect.php";

	$email = $_POST['_emailcontroller'];
	$password = $_POST['_passwordcontroller'];

	$query = "SELECT * FROM account WHERE email='$email' and password='$password'";
	$data = array();
	$result = $con->query($query);
	while($row = $result->fetch_assoc()){
		$data[] = $row;
	}
	echo json_encode($data);
?>


