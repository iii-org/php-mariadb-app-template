<?php
$DB_HOST = "php-mariadb-app-template-master-db-mariadb-db-svc";
$DB_PORT = "3306";
$DB_USERNAME = "bear";
$DB_PASSWORD = "bearisbear";
$DB_NAME = "demo";
$DB_SERVER = $DB_HOST.":".$DB_PORT;

define('DB_SERVER', $DB_SERVER);
define('DB_USERNAME', $DB_USERNAME);
define('DB_PASSWORD', $DB_PASSWORD);
define('DB_NAME', $DB_NAME);
 
/* Attempt to connect to MySQL database */
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>
