<?php
    include_once 'session.php';
    include_once 'database.php';
    
    $title = $_POST['title'];
    $date_b = $_POST['date_b'];
    $date_e = $_POST['date_e'];
    $price = $_POST['price'];
    $category_id = (int)$_POST['category_id'];
    $description = $_POST['description'];
   
    $user_id = (int)$_SESSION['user_id'];
	
	$_SESSION['date'] = $date_e;
	
	//  shrani vrdenost v globalno spremenjivko
		$vrsta = $_POST['avkcija'];
		$_SESSION[avkcija]=$vrsta;
		
    //preverim, če so izpolnjeni obvezni atributi
    if (!empty($title) && !empty($date_b) 
            && !empty($date_e) && !empty($price)
            ) {
        $query = sprintf("INSERT INTO ads(title, 
                           date_b, date_e, price, 
                           category_id, user_id, 
                           description)
                          VALUES ('%s','%s','%s',
                          '%s',$category_id,
                          $user_id,'%s')",
                mysqli_real_escape_string($title),
                mysqli_real_escape_string($date_b),
                mysqli_real_escape_string($date_e),
                mysqli_real_escape_string($price),
                mysqli_real_escape_string($description)
                );
                mysqli_query($link,$query);
                $ad_id = mysqli_insert_id();
                header("Location: ad_view.php?id=$ad_id");
    }
    else {
        header("Location: ad_add.php");
    }
?>