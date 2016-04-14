<?php

$db_user = 'zajec';
$db_pass = 'zajec';
$db_name = 'zajec';
$db_server = 'localhost';

//povezava na mysql strežnik
$link = mysqli_connect($db_server, $db_user, $db_pass,$db_name);

//izbira podatkovne baze na strežniku

//reševanje težave s šumniki
mysqli_query($link,"SET NAMES 'utf8'");

?>
