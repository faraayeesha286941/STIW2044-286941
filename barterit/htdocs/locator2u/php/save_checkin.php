<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'locator2u';

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

// Get the data from the POST request
$name = $_POST['name'];
$email = $_POST['email'];
$gpscoordinate = $_POST['gpscoordinate'];

// Insert the check-in data into the database
$sql = "INSERT INTO users (name, email, gpscoordinate) VALUES ('$name', '$email', '$gpscoordinate')";
if ($conn->query($sql) === TRUE) {
    $item_id = mysqli_insert_id($conn);
    $response = array('status' => 'success', 'data' => null);
	sendJsonResponse($response);
	
} else {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
}

function sendJsonResponse($sentArray)
{
    header('Content-Type: application/json');
    echo json_encode($sentArray);
}

$conn->close();

?>