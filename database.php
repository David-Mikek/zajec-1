<?php

$db_user = 'zajec';
$db_pass = 'zajec';
$db_name = 'zajec';
$db_server = 'localhost';

//povezava na mysql strežnik
//mysqli_connect($db_server, $db_user, $db_pass);
$link = mysqli_connect($db_server, $db_user, $db_pass, $db_name);

//izbira podatkovne baze na strežniku
//mysqli_select_db($db_name);

//reševanje težave s šumniki
mysqli_query($link,$link, "SET NAMES 'utf8'");

?>
