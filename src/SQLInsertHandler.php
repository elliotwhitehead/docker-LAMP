<?php 
error_reporting(E_ALL);
ini_set('display_errors','on');

# this program receves form data, formats passed data into a SQL Insert, and updates the database 
include 'store.php';
$ID = $_REQUEST['Id'];
$Name = $_REQUEST['Name'];
$Quantity = $_REQUEST['Quantity'];
$Price = $_REQUEST['Price'];

$connection = @mysqli_connect('localhost','root','sudo','lab6');

$iq = "INSERT into store (id,name,quantity,price) values ('$ID','$Name','$Quantity','$Price')";
	   
$insert_row =  mysqli_query($connection,$iq);  // Run the INSERT query.

$query = "Select * from store";
$resultset = mysqli_query($connection,$query);

while ($row = mysqli_fetch_array($resultset, MYSQLI_NUM)) {
echo $row[0]." ".$row[1]." ".$row[2]." ".$row[3]."<br>";
}

?>

