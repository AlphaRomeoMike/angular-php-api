<?php
    require "connection.php";
    $data = json_decode(file_get_contents("php://input"));
        $name   = $data->name;
        $age    = $data->age;
        $phone  = $data->phone;

    $query = "CALL st_insertUser('$name', $age, '$phone')";

    if(mysqli_query($con, $query)) {
        $response["msg"] = "User added successfully";
    } else {
        $response["msg"] = "Add user response from server failed";
    }

    echo json_encode($response);
?>