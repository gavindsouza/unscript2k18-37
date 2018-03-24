<?php
  session_start();
  $_SESSION['$last_page']="index.php";
  if(!isset($_SESSION['$pid'])){
    echo '<script type="text/javascript">alert("Login First!")</script>';
    header("Location: {$_SESSION['$last_page']}");
    exit();
  } else {
    if($_SESSION['$type']!='Student'){
      echo '<script type="text/javascript">alert("Only accessible to a student!");</script>';
      header("Location: {$_SESSION['$last_page']}");
      exit();
    }
  }
?>
<!DOCTYPE html>
<html>
<head>
  <title><?php echo $_SESSION['$first_name'] . " " . $_SESSION['$last_name'] . " | SAS"; ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <script src="js/jquery-3.2.1.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="z-index: 9999; width: 100%">
  		<a class="navbar-brand" href="#"><img src="img/concat_logo.png" width="20px" height="20px" style="margin-bottom: 5px" alt="Logo ">UnScript</a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="student.php">Notices</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Attendance<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="studentacademics.php">Academics</a>
                </li>
            </ul>
            <div class = "navbar-text"> Signed in as <i><?php echo $_SESSION['$first_name'] . " " . $_SESSION['$last_name']; ?></i></div>
        	<form action="logout.php" method="post" style="float: right;">
        	    <button class="btn btn-secondary" style="margin-left: 10px;" type="submit" name="logout">Log Out</button>
        	</form>
        </div>
    </nav>
</body>
</html>
