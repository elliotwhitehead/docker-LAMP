<html>
<head>
<title> My Store Web Application </title>
</head>
<body> 
<?php
// Obtain a connection object by connecting to the db
$connection = @mysqli_connect ("localhost", "root",
"sudo", "lab6");
// please fill these parameters with the actual data
if(mysqli_connect_errno())
{
echo "<h4>Failed to connect to MySQL:
</h4>".mysqli_connect_error();
}
else
{
echo "<h4>Successfully connected to MySQL: </h4>";
$query = "Select * from store;";
$resultset = mysqli_query($connection,$query);
while ($row = mysqli_fetch_array($resultset, MYSQLI_NUM)) {
echo $row[0]." ".$row[1]." ".$row[2]." ".$row[3]."<br>";
}
mysqli_close($connection);
}
?> 
<form enctype="multipart/form-data"
action="SQLInsertHandler.php">
<p>Id:&nbsp <input type="text" name="Id" size="10" maxlength="11" /></p>
<p>Name:&nbsp <input type="text" name="Name" size="10" maxlength="20" /></p>
<p>Quantity:&nbsp <input type="text" name="Quantity" size="10" maxlength="30"
/></p>
<p>Price:&nbsp <input type="text" name="Price" size="10" maxlength="10" /></p>
<br>
<input type="submit" value="Add item" /> &nbsp <input type="reset" />
</form>
</body>
</html>
