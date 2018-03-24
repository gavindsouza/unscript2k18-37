<?php
  session_start();
  $_SESSION['$last_page'] = "index.php";
  if (isset($_SESSION['$pid'])) {
    if ($_SESSION['$type'] == 'Student') {
      header("Location: student.php");
      exit();
    } elseif ($_SESSION['$type'] == 'Faculty') {
      header("Location: faculty.php");
      exit();
    }
  }
  session_destroy();
?>
<html>
<head>
  <title>SAS</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <script src="js/jquery-3.2.1.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#"><img src="img/concat_logo.png" width="20px" height="20px" style="margin-bottom: 5px" alt="ConCat">     ConCat</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto"></ul>
    <?php
      include 'db.php';
      if (isset($_POST['submit'])) {
        $pid = mysqli_real_escape_string($mysqli,$_POST['pid']);
        $query = $mysqli->query("SELECT * FROM users WHERE pid = '$pid' LIMIT 1");
        $result = $query->fetch_assoc();
        $check1 = $_POST['password']==$result['user_pass'];
        $check2 = $_POST['password']==$result['parent_pass'];
        $result = $mysqli->query("SELECT * FROM users WHERE pid = '$pid' AND ('$check1' OR '$check2') LIMIT 1");
        if (!$result) {
          echo " <div class='navbar-text' style='margin: 0px 5px; color: red;''>Invalid Details!</div> ";
        } else {
          session_start();
          $query = "SELECT pid,f_name,l_name,type FROM users WHERE pid = '$pid' LIMIT 1";
          $query = $mysqli->query($query);
          $query = $query->fetch_assoc();
          $_SESSION['$type'] = $query['type'];
          $_SESSION['$pid'] = $query['pid'];
          $_SESSION['$first_name'] = $query['f_name'];
          $_SESSION['$last_name'] = $query['l_name'];
          if ($_SESSION['$type'] == 'Student') {
            if($_SESSION['password']==$_POST['user_pass']){
              header("Location: student.php");
            }elseif ($_SESSION['password']==$_POST['parent_pass']){
              header("Location: parents.php");
            }
            exit();
          } elseif ($_SESSION['$type'] == "Faculty") {
            header("Location: faculty.php");
            exit();
          } elseif ($_SESSION['$type'] == "Administrator"){
            header("Location: admin.php");
            exit();
          } else {
            echo " <div class='navbar-text' style='margin: 0px 5px; color: red;'>Contact Administrator!</div> ";
            session_destroy();
          }
        }
      }  
    ?>

    <form style="margin-bottom: 0px;" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
      <div class="form-row align-items-center">
      <div class="col-auto">
        <label class="sr-only" for="pid">Username</label>
        <div class="input-group mb-2 mb-sm-0">
          <input type="text" class="form-control" id="pid" name="pid" placeholder="Username">
        </div>
      </div>
      <div class="col-auto">
        <label class="sr-only" for="password">Password</label>
        <input type="password" class="form-control mb-2 mb-sm-0" id="password" name="password" placeholder="Password">
      </div>
      <div class="col-auto">
        <button type="submit" name="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </form>
</nav>
  <div id="mainbox" class="container-fluid">
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
              $search = '';
            }
            $qry="SELECT distinct priority from `events` WHERE visibility='1'";
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
  <?php
    $qry = "SELECT * FROM `events` INNER JOIN `speakers` WHERE events.speaker_id = speakers.speaker_id AND events.visibility = '1' AND events.comm_name LIKE '%$search%' ORDER BY events.event_sdate";
    $count = 0;
    $result = mysqli_query($mysqli,$qry);
    if (!$result) {
    } else  {
      while ($row = mysqli_fetch_assoc($result)) {
        if(strtotime('today')<strtotime($row['timestamp'])){
          $count++;
          echo "<div class='card col-md-4' id='card-resp' style='float: left; padding: 15px; margin: 2%; align-items: center'>hello</div>"
         /* "<div class='card col-md-4' id='card-resp' style='float: left; padding: 15px; margin: 2%; align-items: center'>
            <img src = 'img/" . $row['comm_name'] . "_logo.jpg' alt='" . $row['comm_name'] . "' style='width:200px; height:200px; border-radius: 100px;' align={center}>
            <br>
            <h2>".$row['event_name']."</h2>
            <p class='title'>" . $row['speaker_fname']. " " . $row['speaker_lname'] . "</p>
            <p>";
            if($row['event_sdate']!=$row['event_edate']) { echo date('dS M Y',strtotime($row['event_sdate'])) . " to " . date('dS M Y',strtotime($row['event_edate'])); } else { echo date('dS M Y',strtotime($row['event_sdate'])); }
            echo "</p>
           <p style='width:100%'><form method='post' action='view_event.php?event_id=".$row['event_id']."'><button class='btn btn-primary' type='submit' name='event_id' value='".$row['event_id']."'>More Information</button></form></p>
          </div>"; */
        }
        }
      }
      if ($count == 0) {
        echo "<div class = 'container-fluid' style = 'text-align: center; margin: 20px;'><h1>No Notices found!</h1></div>";
      }
  ?>
  </div>
</div>
</body>
</html>
<?php $_SESSION['$last_page']="index.php"; ?>