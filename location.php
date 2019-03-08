<!DOCTYPE HTML>

<?php include "dbconnect.php"; ?>
<html>
<head><link rel="stylesheet" type="text/css" href="heading.css"></head>
<body style="background-color:#FFE0B2;">

<?php
	$id = $_GET['id'];
	$sql = "SELECT id, name, description, photo, places FROM locations WHERE id= $id;";
	$result = mysql_query($sql, $conn);
	$row = mysql_fetch_assoc($result);
	$places = $row['places'];
	$places = nl2br($places);
	$places = stripslashes($places);
?>

<img src="<?php echo $row['photo']; ?>" style="width:1325px;height:400px"><br><br>
<h class="cities"><b><?php echo $row['name']; ?></b></h><br>
<p><?php echo $row['description']; ?></p>
<h3>Places to visit in <?php echo $row['name']; ?></h3>
<?php 
echo $places; 
echo "<br>";
?>
<a href="book.php">BOOK HERE</a>
</body>
</html>