<?php
    session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST")
{

   
	$name = $_POST['name'];
	$mobile = $_POST['mobile'];
	$user = $_POST['uname'];
	$email = $_POST['email'];
	$pass =	password_hash($_POST['pass'], PASSWORD_BCRYPT);
	$hash =  md5( rand(0,1000) ) ;
	$category = $_POST['category']?1:1;
    $addr = $_POST['addr'];

	$_SESSION['Email'] = $email;
    $_SESSION['Name'] = $name;
    $_SESSION['Password'] = $pass;
    $_SESSION['Username'] = $user;
    $_SESSION['Mobile'] = $mobile;
    $_SESSION['Category'] = $category;
    $_SESSION['Hash'] = $hash;
    $_SESSION['Addr'] = $addr;
    $_SESSION['Rating'] = 0;
}


require '../db.php';

$length = strlen($mobile);

if($length != 10)
{
	$_SESSION['message'] = "अवैध मोबाईल नंबर !!!";
	header("location: error.php");
	die();
}

if($category == 1)
{
    $sql = "SELECT * FROM farmer WHERE femail='$email'";

    $result = mysqli_query($conn, "SELECT * FROM farmer WHERE femail='$email'") or die($mysqli->error());

    if ($result->num_rows > 0 )
    {
        $_SESSION['message'] = "या ईमेलचा वापरकर्ता आधीपासून अस्तित्वात आहे !";
        //echo $_SESSION['message'];
        header("location: error.php");
    }
    else
    {
    	$sql = "INSERT INTO farmer (fname, fusername, fpassword, fhash, fmobile, femail, faddress)
    			VALUES ('$name','$user','$pass','$hash','$mobile','$email','$addr')";

    	if (mysqli_query($conn, $sql))
    	{
    	    $_SESSION['Active'] = 0;
            $_SESSION['logged_in'] = true;

            $_SESSION['picStatus'] = 0;
            $_SESSION['picExt'] = png;

            $sql = "SELECT * FROM farmer WHERE fusername='$user'";
            $result = mysqli_query($conn, $sql);
            $User = $result->fetch_assoc();
            $_SESSION['id'] = $User['fid'];

            if($_SESSION['picStatus'] == 0)
            {
                $_SESSION['picId'] = 0;
                $_SESSION['picName'] = "profile0.png";
            }
            else
            {
                $_SESSION['picId'] = $_SESSION['id'];
                $_SESSION['picName'] = "profile".$_SESSION['picId'].".".$_SESSION['picExt'];
            }

            $_SESSION['message'] =

                     "आम्ही आपल्याला  पुष्टीकरण लिंक पाठवली आहे $email, कृपया खाते स्थापित करा 
                     संदेशातील लिंकवर क्लिक करून तुमचे खाते!";

            $to      = $email;
            $subject = "Account Verification ( ArtCircle.com )";
            $message_body = "
            Hello '.$user.',

            साइन अप केल्याबद्दल धन्यवाद!

            तुमचे खाते सक्रिय करण्यासाठी कृपया या लिंकवर क्लिक करा:

            http://localhost/AgroCulture/Login/verify.php?email=".$email."&hash=".$hash;

            //$check = mail( $to, $subject, $message_body );

            header("location: profile.php");
    	}
    	else
    	{
    	    //echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    	    $_SESSION['message'] = "Registration failed!";
            header("location: error.php");
    	}
    }
}

else
{
    $sql = "SELECT * FROM buyer WHERE bemail='$email'";

    $result = mysqli_query($conn, "SELECT * FROM buyer WHERE bemail='$email'") or die($mysqli->error());

    if ($result->num_rows > 0 )
    {
        $_SESSION['message'] = "या ईमेलचा वापरकर्ता आधीच अस्तित्वात आहे!";
        //echo $_SESSION['message'];
        header("location: error.php");
    }
    else
    {
    	$sql = "INSERT INTO buyer (bname, busername, bpassword, bhash, bmobile, bemail, baddress)
    			VALUES ('$name','$user','$pass','$hash','$mobile','$email','$addr')";

    	if (mysqli_query($conn, $sql))
    	{
    	    $_SESSION['Active'] = 0;
            $_SESSION['logged_in'] = true;

            $sql = "SELECT * FROM buyer WHERE busername='$user'";
            $result = mysqli_query($conn, $sql);
            $User = $result->fetch_assoc();
            $_SESSION['id'] = $User['bid'];

            $_SESSION['message'] =

                     "आम्ही आपल्याला  पुष्टीकरण लिंक पाठवली आहे $email, कृपया खाते स्थापित करा 
                     संदेशातील लिंकवर क्लिक करून तुमचे खाते!";

            $to      = $email;
            $subject = "Account Verification ( ArtCircle.com )";
            $message_body = "
            Hello '.$user.',

            साइन अप केल्याबद्दल धन्यवाद!
            तुमचे खाते सक्रिय करण्यासाठी कृपया या लिंकवर क्लिक करा:

            http://localhost/AgroCulture/Login/verify.php?email=".$email."&hash=".$hash;

            //$check = mail( $to, $subject, $message_body );

            header("location: profile.php");
    	}
    	else
    	{
    	    //echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    	    $_SESSION['message'] = "Registration not successfull!";
            header("location: error.php");
    	}
    }
}

function dataFilter($data)
{
	$data = trim($data);
 	$data = stripslashes($data);
	$data = htmlspecialchars($data);
  	return $data;
}

?>
