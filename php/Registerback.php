<?php
  include 'connect.php';
  // code...
  $email = $_POST["email"];
  $password1 = $_POST["password1"];
  $password2 = $_POST["password2"];
  $Username = $_POST["Username"];

    $sql = "SELECT * FROM loginuser WHERE user_Name = '$Username' AND user_emil ='$email'";
    $query = mysqli_query($link,$sql);
    $result =mysqli_fetch_array($query,MYSQLI_ASSOC);
    $NameOld = $result['user_Name'];
    $emailOld = $result['user_emil'];
    if ($password1 != $password2) {
      // code...
      echo "password does not match!!!";
}else {
    // if ($Username == $NameOld  $emailOld == $email) {
    //   echo "it have in database!!";
    //  }else {
  $sql1 = "INSERT INTO loginuser(user_Name,user_emil,user_Password,user_Type)VALUES('$Username','$email','$password1','user')";
  $result = mysqli_query($link, $sql1) or die ("Error in query: $sql1 " . mysqli_error());

  if(!$result){
    echo "Error Server mysql";
  }
  else{
    header("location:../login.html");
  }
// }
}
  mysqli_close($link);
?>
