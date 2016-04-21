// tle shrani(updata) novo ceno v PB
<?php
    include_once 'session.php';
    include_once 'database.php';
	include_once 'header.php';
$cena = $_SESSION['cena'];
$sestevanec = $_POST['visjacena'];
$cena = $cena + $sestevanec;

$query = "UPDATE ads SET price = $cena "
mysqli_query($link,$query);

//lepo bi bilo,če bi na auction.php izpisalo najvišjega ponudnika (ne v metih)
$ponudnik = $_SESSION['name'];
?>


Vaša ponudba je bila (uspešno) dodana



 <?php   
    include_once 'footer.php';
?>