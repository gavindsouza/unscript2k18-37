<?php
	session_start();
  	$_SESSION['$last_page']="index.php";
  	if(!isset($_SESSION['$pid'])){
    	echo '<script type="text/javascript">alert("Login First!")</script>';
    	header("Location: {$_SESSION['$last_page']}");
    	exit();
  	} else {
    	if($_SESSION['$type']!='Faculty'){
      		echo '<script type="text/javascript">alert("Only accessible to a Faculty!");</script>';
      		header("Location: {$_SESSION['$last_page']}");
      		exit();
    	}
  	}
?>


<?php $_SESSION['$last_page'] = "index.php"; ?>