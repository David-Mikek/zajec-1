<?php
    include_once 'session.php';
	include_once 'header.php';
	
	$naslov = $_SESSION['naslov'];
	$cena = $_SESSION['cena'];
	
	  echo '<h3>' . $naslov . '</h3>';
	  echo '<h4>' . $cena . '</h4>';
		// avkcija se mora končati ,shraniti mora ponudnika in mu morda poslati soročilo
		
		
		// to bo za čas,najbrž še nuca fixanje
		if ($_SESSION['date']= date("Y/m/d") )
?>

<form action = "auction_bid.php" method = "post">
<input type="number" name="visjacena" value = "Zvisaj za" required="required" />
<br>
<input type="submit" value="Dodaj ponudbo" /> 
</form>

 <?php   
    include_once 'footer.php';
?>