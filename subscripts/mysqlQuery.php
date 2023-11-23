<?php
$user = 'root';
$pass = 'root';
$server = 'localhost';

$conn = new mysqli($server, $user, $pass);

$sqla = "CREATE USER 'omnia'@'%' IDENTIFIED BY 'Atamon69';";
$sqlb = "GRANT ALL ON *.* TO 'omnia' IDENTIFIED BY 'Atamon69';";
$sqlc = "FLUSH PRIVILEGES;";

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
echo "If you got three exclamation marks it worked!";
?>