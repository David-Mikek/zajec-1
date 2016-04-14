// tle shrani(updata) novo ceno v PB
<?php
    include_once 'session.php';
    include_once 'database.php';
	include_once 'header.php';
$cena = $_SESSION['cena'];
$sestevanec = $_POST['visjacena'];
$cena = $cena + $sestevanec;

//ni še fjertik
//cena mora updatati


?>


Vaša ponudba je bila (uspešno) dodana



 <?php   
    include_once 'footer.php';
?>