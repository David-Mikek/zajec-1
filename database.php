<?php

$db_user = 'root';
$db_pass = 'abc123';
$db_name = 'zajec';
$db_server = 'localhost';

//povezava na mysql strežnik
$link = mysqli_connect($db_server, $db_user, $db_pass);

//izbira podatkovne baze na strežniku

//reševanje težave s šumniki
mysqli_query($link,$link,"SET NAMES 'utf8'");

?>
