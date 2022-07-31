<?php
    session_start();

	require '../db.php';

	if(!isset($_SESSION['logged_in']) OR $_SESSION['logged_in'] == 0)
	{
		$_SESSION['message'] = "ब्लॉग लिहिण्यासाठी तुम्हाला प्रथम लॉगिन करावे लागेल !!!";
		header("Location: ../Login/error.php");
		die();
	}


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$title = dataFilter($_POST['blogTitle']);
		$content = $_POST['blogContent'];
		$userName = $_SESSION['Username'];
	}


    $sql = "INSERT INTO blogdata (blogUser, blogTitle, blogContent)
		    VALUES ('$userName', '$title', '$content')";
    $result = mysqli_query($conn, $sql);

    if(!$result)
    {
        $_SESSION['message'] = "काही त्रुटी आली !!!";
        header("location: ../Login/error.php");
    }
	else
	{
		header("Location: ../blogView.php");
	}

    function dataFilter($data)
    {
    	$data = trim($data);
     	$data = stripslashes($data);
    	$data = htmlspecialchars($data);
      	return $data;
    }

?>
