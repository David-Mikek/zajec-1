<?php

if($_POST["submit"]) {
	//to bi naj delovalo nekako tako: če gre obrazec naprej,se naj to izvrši
    $recipient="your@email.address";
    $subject="Form to email message";
    $sender=$_POST["sender"];
    $senderEmail=$_POST["senderEmail"];
    $message=$_POST["message"];

    $mailBody="Name: $sender\nEmail: $senderEmail\n\n$message";

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

        <label>Email address:</label>
        <input name="senderEmail">

        <label>Sporočilo:</label>
        <textarea rows="5" cols="20" name="message"></textarea>

        <input type="submit" name="submit">
    </form>

</body>

</html>
// klasični email obrazec naj zgleda tako
// mail(prejemnik,zadeva,sporočilo,$headers);

//pa še footer za konec
<?php include_once 'footer.php';
?>