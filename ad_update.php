<?php

    include_once 'session.php';
    include_once 'database.php';
    
    $title = $_POST['title'];
    $date_b = $_POST['date_b'];
    $date_e = $_POST['date_e'];
    $price = $_POST['price'];
    $category_id = (int)$_POST['category_id'];
    $description = $_POST['description'];
    $ad_id = (int) $_POST['id'];
    $enable_ad = $_POST['enable_ad'];
    $query = "INSERT INTO ads(enable_ad)
                        VALUES ('$enable_ad')"; 
    
    $result = mysqli_query($link,$query);
    
    $array_enable = mysqli_fetch_array($result);
    $_SESSION['enable_ad'] = $array_enable['enable_ad'];
    
    $user_id = (int)$_SESSION['user_id'];
  
    //preverim, če so izpolnjeni obvezni atributi
    if (!empty($title) && !empty($date_b) 
            && !empty($date_e) && !empty($price)
            ) {
        $sql = sprintf("UPDATE ads SET title = '%s',
                                       date_b = '%s',
                                       date_e= '%s',
                                       description = '%s',
                                       category_id = $category_id,
                                       price = '%s'    
                        WHERE (id = $ad_id AND user_id = $user_id)",
                mysqli_real_escape_string($title),
                mysqli_real_escape_string($date_b),
                mysqli_real_escape_string($date_e),
                mysqli_real_escape_string($description),
                mysqli_real_escape_string($price));
        
        mysqli_query($link,$sql);
        
        header("Location: ad_view.php?id=".$ad_id);
        die();
    }
?>
