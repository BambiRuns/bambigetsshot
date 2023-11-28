<?php
$user = 'root';
$pass = 'root';
$server = 'localhost';

$conn = new mysqli($server, $user, $pass);

$sqla = "CREATE USER 'omnia'@'%' IDENTIFIED BY 'Atamon69';";
$sqlb = "GRANT ALL ON *.* TO 'omnia' IDENTIFIED BY 'Atamon69';";
$sqlc = "FLUSH PRIVILEGES;";
$sqld = "CREATE DATABASE wordpress;";
$sqle = "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'Atamon69';";
$sqlf = "GRANT ALL ON wordpress.* TO 'wordpress' IDENTIFIED BY 'Atamon69';";
$sqlg = "FLUSH PRIVILEGES;";

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
		if ($conn->query($sqld) === TRUE) {
		echo "!";
		}
	else {
		echo "Error: " . $sqld . " " . $conn->error;
	}

	if ($conn->query($sqle) === TRUE) {
		echo "!";
		}
	else {
		echo "Error: " . $sqle . " " . $conn->error;
	}

	if ($conn->query($sqlf) === TRUE) {
		echo "!";
		}
	else {
		echo "Error: " . $sqlf . " " . $conn->error;
	}
		if ($conn->query($sqlg) === TRUE) {
		echo "!";
		}
	else {
		echo "Error: " . $sqlg . " " . $conn->error;
	}
echo "If you got three exclamation marks it worked!";
?>