<?php include "check_login.php" ?>
<!DOCTYPE HTML>
 <html>
 <head><link rel="stylesheet" type="text/css" href="heading.css">
<style>  #book{
  font-family:Lucida Handwriting;
  text-align:left;
}</style></head>
<body style="background-color:#FFE0B2;">
<a href="main.html"><img src="logo.png" style="width:300px;height:100px;"></a>
<h1 class="head"> TRIP PLANNER-SEASONAL VACATION PLANNER</h1>
<h3 id="book">BOOKINGS</h3>
<p> We will be providing you all the cheapest trip. Not just cheapest flight bookings and cheapest hotels, we offer rail bookings, bus bookings, cab bookings, travel guides, many offers and discounts. We make sure you have a wonderful experience with us!!!</p>
<form action="" method="POST">
From : <input type="text" name="from" size="20"><br><br>
 
To : <input type="text" name="to" size="20"><br><br>
 
Departure Date : <input type="text" name="departure" size="20"><br><br>
 
Return Date : <input type="text" name="return" size="20"><br><br>
 
No. of travellers : 
<select name="travellers">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
</select><br><br>
For flight bookings : <br><br>
Class : 
<select name="flight_class">
  <option value="economy">Economy</option>
  <option value="business">Business</option>
  <option value="firstclass">First Class</option>
  <option value="premiumeconomy">Premium Economy</option>
</select><br><br>
For hotels : <br><br>
Check In : <input type="text" name="checkin" size="20"><br><br>
 
Check Out : <input type="text" name="checkout" size="20"><br><br>
 
Rooms : 
<select name="rooms">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
</select>
<br><br>
 
For trains : <br><br>
Class : 
<select name="train_class">
  <option value="sleeperclass">Sleeper Class</option>
  <option value="thirdAC">Third AC</option>
  <option value="secondAC">Second AC</option>
  <option value="fistAC">First AC</option>
  <option value="secondseating">Second Seating</option>
</select><br><br>
<input type="submit" name="submit" value="Submit"></input>

</form>
</body>
</html>

<?php
  if(isset($_POST['submit'])){
    include "dbconnect.php";
    $id = $_SESSION['id'];
    $source = $_POST['from'];
    $destination = $_POST['to'];
    $departure_date = $_POST['departure'];
    $return_date = $_POST['return'];
    $travellers = $_POST['travellers'];
    $flight_class = $_POST['flight_class'];
    $checkin = $_POST['checkin'];
    $checkout = $_POST['checkout'];
    $flight_class = $_POST['flight_class'];
    $rooms = $_POST['rooms'];
    $train_class = $_POST['train_class'];

    $sql = "INSERT INTO `booking` (`user_id`, `source`, `destination`, `departure_date`, `return_date`, `travellers`, `checkin`, `checkout`, `flight_class`, `rooms`, `train_class`) VALUES ( $id, '$source', '$destination', '$departure_date', '$return_date', '$travellers', '$checkin', '$checkout', '$flight_class', '$rooms', '$train_class');";
    $result = mysql_query($sql, $conn);
    echo "$sql";
    echo "<script>alert('Your booking has been saved. We will contact you soon. Thank You.');</script>";
  }
?>