<!DOCTYPE html>
        <html>
        <head>
        
        <style>
            html, body {
            width: 100%;
            height: 100%;
            font-family: "Helvetica Neue", Helvetica, sans-serif;
            color: #444;
			background-color:#FFE0B2;
			          }
        #container {
            position: fixed;
            width: 340px;
            height: 280px;
            top: 50%;
            left: 50%;
            margin-top: -140px;
            margin-left: -170px;
            background: #3b8ca0;
           

        }
        form {
            margin:  auto;
            margin-top: 20px;
        }
		
		
        label {
            color: white;
            display: inline-block;
            margin-left: 18px;
            padding-top: 10px;
            font-size: 18px;
        }
        <!--p a {
            font-size: 11px;
            color: #aaa;
            float: right;
            margin-top: -13px;
            margin-right: 20px;!-->
        
       
        }
       
            
        
        input[type=text],
        input[type=password]{
            color: black;
			padding-left: 10px;
            margin: 10px;
		    margin-top: 12px;
            margin-left: 18px;
            width: 290px;
            height: 35px;
                        }
        }
        }
        <!--#lower {
            background: #ecf2f5;
            width: 100%;
            height: 69px;
            margin-top: 20px;
            border-top: 1px solid #ccc;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;!-->
        }
        input[type=checkbox] {
            margin-left: 20px;
            margin-top: 30px;
        }
        
        input[type=submit] {
            float: right;
            margin-right: 130px;
            margin-top: 25px;
            width: 80px;
            height: 30px;
            font-size: 14px;
            font-weight: bold;
            color: white;
			background-color: blue;
             }
       
        </style>

        </head>

        <body>

			<a href="main.html"><img src="logo.png" style="width:300px;height:100px;"></a><br><br>
			<h class="head"><b>TRIP PLANNER-SEASONAL VACATION PLANNER</b></h><br><br><br>

            <!-- Begin Page Content -->
            <div id="container">
                <form action="" method="post">
                    <label for="username" >Username:</label>
                    <input type="text"  id="username" placeholder="Username" name="username">
                    <label for="password">Password:</label>
                    <input type="password" id="password" placeholder="Password" name="password">
                    <div id="lower">
                        <input type="submit" name="submit" value="Login">
                    </div><!--/ lower-->
                </form>
            </div><!--/ container-->
            <!-- End Page Content -->
        </body>
        </html>


        <?php
        session_start();
		if(isset($_SESSION['login_user'])){
			include "dbconnect.php";
			header("Location: main.html");
		}
		else if(isset($_POST["submit"])){
			include "dbconnect.php";
			$username = $_POST["username"];
			$password = $_POST["password"];
			$username = stripslashes($username);
			$password = stripslashes($password);
			$username = mysql_real_escape_string($username);
			$password = mysql_real_escape_string($password);
			
		  	if($username!="" && $password!=""){
		  		$sql = "SELECT username, password  FROM `user` WHERE `username` LIKE '$username' AND `password` LIKE '$password'";
				$result = mysql_query( $sql, $conn );
				$num_rows = mysql_num_rows($result);
				if($num_rows==1){
					$_SESSION['login_user'] = $username;
					$sql1 =  "SELECT `id`, `first_name`, `last_name` FROM `user` WHERE `username` LIKE '$username'";
					$result1 = mysql_query( $sql1, $conn );
					$row1 = mysql_fetch_assoc($result1);
					$_SESSION['first_name'] = $row1['first_name'];
					$_SESSION['last_name'] = $row1['last_name'];
                    $_SESSION['id'] = $row1['id'];
                    echo "<script>alert('You have logged in successfully. Enjoy!!!')</script>";
					header("Location: main.html");
				}else{
					echo '<hr><center>Username or password is incorrect<hr></center>';
				}
			}
		}

        ?>