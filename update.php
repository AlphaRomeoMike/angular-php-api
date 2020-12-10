<?php
    require "connection.php";
    $data = json_decode(file_get_contents("php://input"));
        $id     = $data->id;
        $name   = $data->name;
        $age    = $data->age;
        $phone  = $data->phone;

    $query = "CALL st_updateUser('$name', $age, '$phone', $id)";

    if(mysqli_query($con, $query)) {
        $response["msg"] = "User update response from server was a success ";
    } else {
        $response["msg"] = "User update response from server failed";
    }

    echo json_decode($response);
?>