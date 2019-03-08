<!DOCTYPE html>
<html>
<head></head>
<body>
<table align="center"; style="width:60%">
<?php
session_start();
if(isset($_SESSION['login_user'])){
	echo "<tr> Welcome ".$_SESSION['first_name']." ".$_SESSION['last_name'];
	echo "<form style='float: right;' action='' method='post'><input type='submit' name='logout' value='Logout'></form><p/>";
		if(isset($_POST["logout"])){
			session_destroy();
			unset($_SESSION['login_user']);
		}
}
else{
?>
<td><a href="login.php" target="_top">Log In</a></td>
<td><a href="signup.php" target="_top">Sign Up</a></td>
<?php } ?>
</table>
</body>
</html>
