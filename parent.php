<?php
	session_start();
  	$_SESSION['$last_page']="index.php";
  	if(!isset($_SESSION['$pid'])){
    	echo '<script type="text/javascript">alert("Login First!")</script>';
    	header("Location: {$_SESSION['$last_page']}");
    	exit();
  	} else {
    	if($_SESSION['$type']!='Parent'){
      		echo '<script type="text/javascript">alert("Only accessible to a Parents!");</script>';
      		header("Location: {$_SESSION['$last_page']}");
      		exit();
    	}
  	}
?>

<html>
<head>
<title><?php echo "".$_SESSION['$first_name'] . " " . $_SESSION['$last_name'] . " | SAS"; ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <script src="js/jquery-3.2.1.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body style="background-color: #e8f0ff;">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="z-index: 9999; width: 100%">
      <a class="navbar-brand" href="#"><img src="img/concat_logo.png" width="20px" height="20px" style="margin-bottom: 5px" alt="UnScript"> UnScript</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Notices<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="studentattend.php">Attendance</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="studentacademics.php">Academics</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact Us</a>
        </li>
    </ul>
    <div class = "navbar-text"> Signed in Parent of <i><?php echo $_SESSION['$first_name'] . " " . $_SESSION['$last_name']; ?></i></div>
  <form action="logout.php" method="post" style="float: right;">
      <button class="btn btn-secondary" style="margin-left: 10px;" type="submit" name="logout">Log Out</button>
  </form>
  </div>
</nav>
  <div id="mainbox" class="container-fluid" style="float:left;width:100%;">
    <div style="width: 90%; margin-top: 1%">
      <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
        <div class="form-group" style="float: right; width: 100% display: inline-block;">
        <div style="float: left;">
          <label for="sel1" style="text-align: center; margin: 5px;">Select Priority:</label>
          </div>
          <div style="float: left;"><select class="form-control" id="sel1" name="valueToSearch">
            <option value="">All</option>
            <?php 
            include 'db.php';
            if(isset($_POST['search'])){
              $search = $_POST['valueToSearch'];
            } else {
              $search ='';
            }
            $qry="SELECT distinct priority from `notices`";
            $res=mysqli_query($mysqli,$qry);
                while ($r=mysqli_fetch_assoc($res)) {
                if ($r['priority']==$search) {
                  echo "<option value='".$r['priority']."' selected>".$r['priority']."</option>";
                  }
                  else {
                echo "<option value='".$r['priority']."'>".$r['priority']."</option>";
                  }
               }
            ?>       
          </select></div>
          <div style="float: left;">&nbsp;<button type="submit" class="btn btn-primary" style="float: right;" name="search" >Find</button></div>       
        </div>
      </form>
    </div>
    <div style="width:100%;">
  <?php
    $qry = "SELECT * FROM `notices` where priority LIKE'%$search%' ORDER BY timestamp";
    $count = 0;
    
    $result = mysqli_query($mysqli,$qry);
    if (!$result) {
    } 
    else  {
      while ($row = mysqli_fetch_assoc($result)) {
        echo "<div class='container-fluid alert' style='float:left;width:device-width;'>";
          $count++;
          if($row['priority']=="Moderate")
            echo "<div class='alert alert-warning' style='float:left;width:100%;'><strong><a href='#' class='alert-link'>".$row['header']."</a></strong><br><p>".$row['description']."</p></div>";
          if($row['priority']=="High")
            echo "<div class='alert alert-danger' style='float:left;width:100%;'><strong><a href='#' class='alert-link'>".$row['header']."</a></strong><br><p>".$row['description']."</p></div>";
          if($row['priority']=="Low")
            echo "<div class='alert alert-success' style='float:left;width:100%;'><strong><a href='#' class='alert-link'>".$row['header']."</a></strong><br><p>".$row['description']."</p></div>";
          echo "</div>";
        }
      }
      if ($count == 0) {
        echo "<div class = 'container-fluid' style = 'text-align: center; margin: 20px;'><h1>No Notices found!</h1></div>";
      }
  ?>
  </div>
  </div>
</div>
</body>
</html>

<?php $_SESSION['$last_page'] = "index.php"; ?>