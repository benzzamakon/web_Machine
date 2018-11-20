<?php
	session_start();
	include 'connect.php';
	$strSQL = "SELECT * FROM loginuser WHERE user_emil = '".mysqli_real_escape_string($link,$_POST['email'])."'
	and user_Password = '".mysqli_real_escape_string($link,$_POST['password'])."'";
	$objQuery = mysqli_query($link,$strSQL);
	$objResult = mysqli_fetch_array($objQuery,MYSQLI_ASSOC);
	if(!$objResult)
	{
			echo "Username and Password Incorrect!";
	}
	else
	{
			$_SESSION["user_ID"] = $objResult["user_ID"];
			$_SESSION["user_Type"] = $objResult["user_Type"];
			$_SESSION["user_Name"] = $objResult["user_Name"];
			session_write_close();
			header("location:../index.php");

	}
	//mysql_close();
?>
