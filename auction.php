<?php
    include_once 'session.php';
	include_once 'header.php';
	
	$naslov = $_SESSION['naslov'];
	$cena = $_SESSION['cena'];
	
	  echo '<h3>' . $naslov . '</h3>';
		
?>

<form action = "auction_bid.php" method = "post">
<input type="number" name="visjacena" value = "Zvisaj za" required="required" />
<br>
<input type="submit" value="Dodaj ponudbo" /> 
</form>

 <?php   
    include_once 'footer.php';
?>