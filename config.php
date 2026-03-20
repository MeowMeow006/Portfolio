<?php

$host = getenv('MYSQL_HOST') ?: 'db';
$user = getenv('MYSQL_USER') ?: 'app';
$password = getenv('MYSQL_PASSWORD') ?: 'rootpassword';
$database = getenv('MYSQL_DATABASE') ?: 'user_db';

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die('Connection failed:' . $conn->connect_error);
}

?>