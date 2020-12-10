<?php
    require "connection.php";
    $data = json_decode(file_get_contents("php://input"));
        $id     = $data->id;

    $query = "CALL st_deleteUser($id)";

    if(mysqli_query($con, $query)) {
        $response["msg"] = "User deleted response from server was a success ";
    } else {
        $response["msg"] = "Delete user response from server failed";
    }

    echo json_decode($response);
?>