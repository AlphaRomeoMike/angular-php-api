<?php
    $con = mysqli_connect("localhost", "root", "", "api");
    if($con) {
        echo "Connection Established";
    } else {
        die();
    }
?>