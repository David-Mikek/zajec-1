<?php

if($_POST["submit"]) {
	//to bi naj delovalo nekako tako: če gre obrazec naprej,se naj to izvrši. o
    $recipient=$_POST["recieverEmail"];
    $subject=$_POST["subject"];
    $sender=$_POST["sender"];
    $senderEmail=$_POST["senderEmail"];
    $message=$_POST["message"];

    $mailBody="Od: $sender\nKontakt: $senderEmail\n\n$message";

   // klasični email obrazec baje zgleda tako
  // mail(prejemnik,zadeva,sporočilo,$headers);

    mail($recipient, $subject, $mailBody, "From: $sender <$senderEmail>");

    $thankYou="<p>Thank you! Your message has been sent.</p>";
	// ta dva includata pač header in povezovo do podatkovne baze(morda lahko iz nje dobimo pošiljateljev e-naslov),sam mogoč bi mogla bit pod doctypu,just maybe
	 include_once 'header.php';
     include_once 'database.php';
}

?><!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>Message</title>
</head>

<body>

    <?=$thankYou ?>

    <form method="post" action="message.php">
        <label>Ime:</label>
        <input name="sender">

        <label>Vaš Email:</label>
        <input name="senderEmail">

		<label>Prejemnikov Email:</label>
        <input name="recieverEmail">
		
		<label>Zadeva:</label>
        <input name="subject">
		
        <label>Sporočilo:</label>
        <textarea rows="5" cols="20" name="message"></textarea>
		
	//obrazec pošlje podatke na isto stran,oziroma v php nad doctypu	

        <input type="submit" name="submit">
    </form>

</body>

</html>
//pa še footer za konec
<?php include_once 'footer.php';
?>