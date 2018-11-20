<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Machine</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />


</head>

<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">
                    <img src="assets/img/Machine.png" alt="" />
                </a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search ">
                        <!-- search section-->
                        <form  action="Search.php" method="post">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" name="boxSearch" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="submit">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                          </form>
                        <!--end search section-->
                    </li>
                    <?php
                    include 'php/connect.php';
                    session_start();
                    if (isset($_SESSION["user_Type"])) {
                    echo '<li>
                          <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$_SESSION["user_Name"].'</h4>
                          </li>
                          <li>
                          <a href="php/logOut.php"><i class="fa fa-fw"></i>Logout</a>
                          </li>';
                    }else {
                      echo '<li>
                            <a href="login.html"><i class="fa fa-fw"></i>Login</a>
                            </li>';
                    }
                    ?>
                    <li >
                        <a href="index.php"><i class="fa fa-fw"></i>โปรโมชั้น</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw"></i>สินค้า<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li>
                              <a href="eyebrow.php">คิ้ว</a>
                          </li>
                          <li>
                              <a href="Mouth.php">ปาก</a>
                          </li>
                          <li>
                              <a href="eye.php">ตา</a>
                          </li>
                          <li>
                              <a href="cheek.php">แก้ม</a>
                          </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>
                     <li>
                        <a href="ContactUs.php"><i class="fa fa-fw"></i>ติดต่อเรา</a>
                    </li>
                    <li>
                        <a href="AboutUs.php"><i class="fa fa-fw"></i>เกี่ยวกับเรา</a>
                    </li>

                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->
        <?php
           $ProductName = null;
           if(isset($_POST["ProductName"]))
           {
             $ProductName = $_POST["ProductName"];
           }

           if(isset($_POST["productnum"]))
           {
             $productnum = $_POST["productnum"];
           }
           $sql = "SELECT * FROM product  WHERE ProductName = '$ProductName' ";
           $query = mysqli_query($link,$sql);
           $result=mysqli_fetch_array($query,MYSQLI_ASSOC);
           ?>
        <!-- navbar side -->

        <!--  page-wrapper -->
        <div id="page-wrapper" >
            <div class="row">
                <!-- page header-->
                <div class="col-lg-12">
                    <h1 class="page-header">สั่งสินค้า</h1>
                </div>
                 <!-- end page header-->
            </div>
      <form action="php/backOrderapp.php" method="post"  >
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4><input type="hidden" value="<?php echo $result['ProductID'];?>" name="ProductID"><?php echo $result['ProductName'];?></h4>
                      </div>
                        <div class="panel-body">
                              <div class="col-sm-3">
                                <img  src="Imgproduct/<?php echo $result['ProductPicture'];?>" width="250px"height="250px">
                              </div>
                              <div class="col-sm-9">
                                <p><?php echo "ประเภท : ".$result['ProductCategory'];?></p>
                                <p><?php echo "ราคา : ".$result['ProductPrice']." บาท";?></p>
                                <p><input type="hidden" value="<?php echo $productnum;?>" name="productnum"><?php echo "จำนวน : ".$productnum." อัน";?></p>
                              </div>
                              <div class="col-sm-9">

                                    <fieldset>
                                      <div class="form-group">
                                          <input class="form-control" placeholder="Name" name="Name" type="text"  required>
                                      </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="E-mail" name="email" type="email"  required>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="app" name="app" type="text" required>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Tel" name="Tel" type="text"  required>
                                        </div>
                                        <!-- Change this to a button or input when using this as a form -->
                                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Confirm">
                                    </fieldset>

                              </div>
                            </div>
                        </div>
                    </div>
            </div>
          </form>
        </div>
        <!-- end page-wrapper -->
    </div>
    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="assets/plugins/flot/jquery.flot.js"></script>
    <script src="assets/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="assets/plugins/flot/jquery.flot.resize.js"></script>
    <script src="assets/plugins/flot/jquery.flot.pie.js"></script>
    <script src="assets/scripts/flot-demo.js"></script>

</body>

</html>
