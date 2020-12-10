<?php
    require "connection.php";

    $query = "CALL st_getUser()";
    $response = array();
    $res = mysqli_query($con, $query);

    if(mysqli_num_rows($res)) {
        while($row = mysqli_fetch_assoc($res)) {
            $response[] = $row;
        }
    } else {
        $response["msg"] = "No records";
    }

    echo json_encode($response);
?>