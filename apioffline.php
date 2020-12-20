<?php
error_reporting(0);
include "config.php";

$auth = $_GET['auth']; //888
$perintah = $_GET['perintah'];

//tabel admin
$username = $_GET['username'];
$password = $_GET['password'];
$id = $_GET['id'];

if($auth == "888"){

if(!empty($_GET) && $perintah=="insertadmin"){
    $sql = "INSERT INTO admin (username, password) VALUES ('". $username. "', '".$password."')";
    echo"<br>";
    echo $sql;
    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

if(!empty($_GET) && $perintah=="updateadmin"){
    $sql = "update admin set username='".$username."' where password='".$password."'";
    echo"<br>";
    echo $sql;
    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

if(!empty($_GET) && $perintah=="deleteadmin"){
    $sql = "delete from admin where id=".$id;
    echo"<br>";
    echo $sql;
    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "Record has been deleted";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

if(!empty($_GET) && $perintah=="loginadmin"){
	$return_arr = array();
	$sql = "SELECT * FROM admin";
	$result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $row_array['id'] = $row['id'];
            $row_array['username'] = $row['username'];
            $row_array['password'] = $row['password'];
            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }
}

$conn->close();
}

?>