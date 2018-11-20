<?php
  include 'connect.php';
  // code...
  $ProductID = $_POST["ProductID"];
  $Name = $_POST["Name"];
  $email = $_POST["email"];
  $app = $_POST["app"];
  $Tel = $_POST["Tel"];
  $data = date('y-m-d');
  $productnum = $_POST["productnum"];
  //up images

  $sql1 = "INSERT INTO orders(OrderDate,OrderName,OrderAdd,OrderTel,OrderEmail)
  VALUES('$data','$Name','$app','$Tel','$email')";
  $result = mysqli_query($link, $sql1) or die ("Error in query: $sql1 " . mysqli_error());

  $sql2 = "SELECT * FROM orders WHERE OrderName = '$Name' AND OrderDate = '$data'";
  $query2 = mysqli_query($link,$sql2);
  $result2 =mysqli_fetch_array($query2,MYSQLI_ASSOC);
  $OrderID =  $result2['OrderID'];

  $sql3 = "INSERT INTO orders_detail(OrderID,ProductID,ODQty)
  VALUES('$OrderID','$ProductID','$productnum')";
  $result3 = mysqli_query($link, $sql3) or die ("Error in query: $sql1 " . mysqli_error());

  if(!$result3&&!$result&&$result2){
    echo "Error Server mysql";
  }
  else{
    header("location:../pay.php");
  }

  mysqli_close($link);
?>
