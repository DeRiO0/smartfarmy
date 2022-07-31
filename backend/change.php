<?php
        session_start();
    if($_SERVER['REQUEST_METHOD'] == "POST"){
      


       
    
        require './db.php';
    
    
       
        $pass = $_POST['pass'];
        $cpass = $_POST['cpass'];
        
        $newHash =  md5( rand(0,1000) ) ;

        $id = $_SESSION['id']; 
    
        $sql = "SELECT * FROM `buyer` WHERE bid = '$id'";

        $result = mysqli_query($conn, $sql);
        
        $num_rows = mysqli_num_rows($result);
        
    
        if($num_rows == 0)
        {
            $_SESSION['message'] = "अवैध वापरकर्ता क्रेडेन्शियल!";
            header("location: error.php");
        }
        else
        {
            $User = $result->fetch_assoc();
            
            if(true)
            {
                if($pass == $cpass)
                {
                    $conNewPass = password_hash($_POST['pass'], PASSWORD_BCRYPT);
                    $currHash = $_SESSION['Hash'];
                    $id = $User['bid']; 
                    $sql = "UPDATE buyer SET bpassword='$conNewPass' WHERE bid = '$id'";
                   
                 
                    $result = mysqli_query($conn, $sql);
                    
                    if($result)
                    {
                        $_SESSION['message'] = "पासवर्ड यशस्वीरित्या बदलला!";
                        header("location: login/success.php");
                    }
                    else
                    {
                        $_SESSION['message'] = "पासवर्ड बदलताना एरर आली<br>कृपया पुन्हा प्रयत्न करा!";
                        header("location: ./Login/error.php");
                    }
                }
            }
            else

            {
                echo "asdf"; die; 
                $_SESSION['message'] = "अवैध वर्तमान वापरकर्ता क्रेडेन्शियल!";
                header("location: ../Login/error.php");
            }
        }
    
        function dataFilter($data)
        {
            $data = trim($data);
             $data = stripslashes($data);
            $data = htmlspecialchars($data);
              return $data;
        }
    

    




    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="POST">
        <div class="forom-group">
            <label for="">Enter New Password</label>
            
            <input type="password" name="pass" require>
        </div>


        <div class="forom-group">
            <label for="">confirm Passowrd</label>
            
            <input type="password" name="cpass" require>
        </div>

        <button class="btn btn-danger">Change Password</button>
    </form>
    </body>
</html>