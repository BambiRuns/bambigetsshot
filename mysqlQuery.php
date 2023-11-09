<?php
$user = 'root';
$pass = '';
$server = 'localhost';

$conn = new mysqli($server, $user, $pass);

$sqla = "CREATE USER 'omnia'@'%' IDENTIFIED BY 'Atorvast69'; GRANT ALL ON *.* TO 'omnia'@'%' IDENTIFIED BY 'Atorvast69'; FLUSH PRIVILEGES;";

	if ($conn->query($sqla) === TRUE) {
		echo "SUCCESS!";
		}
	else {
		echo "Error: " . $sqla . " " . $conn->error;
	}

?>