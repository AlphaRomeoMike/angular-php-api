<?php
    require "connection.php";
    $data = json_decode(file_get_contents("php://input"));

    $query = "CALL st_getUser()";
    $response = array();
    $res = mysqli_query();

    if(mysqli_query($con, $query)) {
        $response["msg"] = "User update response from server was a success ";
    } else {
        $response["msg"] = "Update response from server failed";
    }

    echo json_decode($response);
?>