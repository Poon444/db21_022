<?php

    $severname = "localhost";
    $username = "db21_022";
    $password ="db21_022";
    $dbname = "db21_022";
    $conn = new mysqli($severname,$username,$password);
    mysqli_set_charset($conn, "utf8");
    if($conn->connect_error)
    {
        die("Connection failed: ".$conn->connect_error);
    }
    else
    {
        echo "OK";
    }
    if(!$conn->select_db($dbname))
    {
        die("Connection failed: ".$conn->connect_error);
    }
    
?>