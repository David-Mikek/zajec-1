<?php

$db_user = 'root';
$db_pass = 'abc123';
$db_name = 'zajec';
$db_server = 'localhost';

//povezava na mysql strežnik
mysqli_connect($db_server, $db_user, $db_pass);

//izbira podatkovne baze na strežniku
mysqli_select_db($db_name);

//reševanje težave s šumniki
mysqli_query("SET NAMES 'utf8'");

?>
