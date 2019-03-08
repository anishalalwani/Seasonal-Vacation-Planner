
<!DOCTYPE HTML>
 <html>
 <head><link rel="stylesheet" type="text/css" href="heading.css"></head>
 <style type="text/css">
 	.block{
	border: 1px solid #4C4C4C;
	width: 40%;
	padding: 5px;
	margin: 10px;
}
.block legend{
	font-size: 18px;
	color: #4C4C4C;
}
.blk{
	width: 50%;
	padding: 5px;
	margin: 10px;
}
.review{
	padding: 10px;
	margin: 10px;
	width: 90%;
	height: auto;
	transition: all 1s ease;
}
.half{
	float: left;
	width: 44%;
}
.submit{
	background-color: transparent;
	border: 1px solid #CFCFCF;
	transition: all 1s ease;
}
.submit:hover{
	border-radius: 20%;
}
 </style>
<body style="background-color:#FFE0B2;">
<a href="main.html"><img src="logo.png" style="width:300px;height:100px;"></a><br><br>
<h class="head"><b>TRIP PLANNER-SEASONAL VACATION PLANNER</b></h><br><br><br>
		<form action="" method="post">
			<fieldset class="block">
				<legend>Personal Information</legend>
				<input class="review half" type="text" placeholder="First Name" name="fname" pattern="[a-zA-Z]+" title="Only enter letters" required></input>
				<input class="review half" type="text" placeholder="Last Name" name="lname" pattern="[a-zA-Z]+" title="Only enter letters" required></input><br>
				<input class="review" type="text" placeholder="Contact Number" name="contact" onkeypress='return event.charCode >= 48 && event.charCode <= 57' required></input><br>
				<input class="review" type="email" placeholder="E-Mail" name="email" required></input><br>
			</fieldset>
			<fieldset class="block">
				<legend class="block_name">Login Details</legend>
				<input class="review" type="text" placeholder="Username" name="username" required></input><br>
				<input class="review" type="password" placeholder="Password" name="password" required></input><br>
				<input class="review" type="password" placeholder="Confirm Password" name="passwordcnf" required></input><br>
			</fieldset>
			<div class="blk">
				<button class="submit review half" type="submit" value="submit" name="submit">Submit</button>
				<button class="submit review half" type="reset" value="Reset">Reset</button>
			</div>
		</form>
</body>
</html>

<?php
	include "dbconnect.php";
	if(isset($_POST["submit"])){
		$fname = $_POST["fname"];
		$lname = $_POST["lname"];
		$contact = $_POST["contact"];
		$email = $_POST["email"];
		$username = $_POST["username"];
		$password = $_POST["password"];
		$passwordcnf = $_POST["passwordcnf"];

		if($password == $passwordcnf){
			$sql = "INSERT INTO `user` (`first_name`, `last_name`, `contact`, `email`, `username`, `password`) VALUES ('$fname', '$lname', '$contact', '$email', '$username', '$password');";
			$result = mysql_query($sql, $conn);
			echo "Registered Successfully";
		}else{
			echo "Passwords do not match";
		}
	}
?>