<?php
$user = "root";
$pass = "root";
$server = "localhost";

$conn = new mysqli($server, $user, $pass);

$sql = "CREATE DATABASE wordpress;";
$sqla = "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'Atamon69';";
$sqlb = "GRANT ALL ON wordpress.* TO 'wordpress' IDENTIFIED BY 'Atamon69';";
$sqlc = "FLUSH PRIVILEGES;";

	if ($conn->query($sql) === TRUE) {
		echo "!";
		}
	else {
		echo "Error: " . $sql . " " . $conn->error;
	}
	if ($conn->query($sqla) === TRUE) {
		echo "!";
		}
	else {
		echo "Error: " . $sqla . " " . $conn->error;
	}

	if ($conn->query($sqlb) === TRUE) {
		echo "!";
		}
	else {
		echo "Error: " . $sqlb . " " . $conn->error;
	}

	if ($conn->query($sqlc) === TRUE) {
		echo "!";
		}
	else {
		echo "Error: " . $sqlc . " " . $conn->error;
	}
echo "If you got three exclamation marks it worked!
?>