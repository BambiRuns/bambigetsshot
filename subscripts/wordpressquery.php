<?php
$user = "";
$pass = "";
$server = "";

$conn = new mysqli($server, $user, $pass);

$sql = "CREATE DATABASE wordpress; CREATE USER wordpress@localhost IDENTIFIED BY 'bambigetsshot'; GRANT ALL ON wordpress.* TO wordpress@localhost; FLUSH PRIVILEGES;";

	if ($conn->query($sql) === TRUE) {
		echo "SUCCESS!";
		}
	else {
		echo "Error: " . $sqla . " " . $conn->error;
	}


?>