<?php
session_start();
error_reporting(0);
include('includes/config.php');

if(isset($_POST['book']))
{
$jobid=intval($_GET['jobid']);
$userid=$_SESSION['jsid'];
$edate=$_POST['edate'];
$est=$_POST['est'];
$address=$_POST['address'];

// Query for validation of  email-id
$ret="SELECT * FROM  tblapplyjob where (EDate=:edate || ETime=:est)";
$queryt = $dbh -> prepare($ret);
$queryt->bindParam(':edate',$edate,PDO::PARAM_STR);
$queryt->bindParam(':est',$est,PDO::PARAM_STR);
$queryt -> execute();
$results = $queryt -> fetchAll(PDO::FETCH_OBJ);
if($queryt -> rowCount() == 0)
{

$sql="INSERT INTO tblapplyjob(JobId,UserId,EDate,ETime,Address) VALUES(:jobid,:userid,:edate,:est,:address)";
$query = $dbh->prepare($sql);
$query->bindParam(':jobid',$jobid,PDO::PARAM_STR);
$query->bindParam(':userid',$userid,PDO::PARAM_STR);
$query->bindParam(':edate',$edate,PDO::PARAM_STR);
$query->bindParam(':est',$est,PDO::PARAM_STR);
$query->bindParam(':address',$address,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
  echo "<script>alert('Booked Successfully');</script>";
  }
else{
  echo "<script>alert('Sign In First');</script>";
}
}
else {
  echo "<script>alert('Already Booked. Try another date or time');</script>";
}
}


?>
<!doctype html>

<html lang="en">

<head>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>JOBS NEPAL-work Details</title>

<!--CUSTOM CSS-->

<link href="css/custom.css" rel="stylesheet" type="text/css">

<!--BOOTSTRAP CSS-->

<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/responsive.css" rel="stylesheet" type="text/css">

<!--OWL CAROUSEL CSS-->

<link href="css/owl.carousel.css" rel="stylesheet" type="text/css">

<!--FONTAWESOME CSS-->

<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!--SCROLL FOR SIDEBAR NAVIGATION-->

<link href="css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">


<!--GOOGLE FONTS-->

<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,500,700,900' rel='stylesheet' type='text/css'>


</head>



<body class="index">

<!--WRAPPER START-->

<div id="wrapper">

  <!--HEADER START-->

  <?php include_once('includes/header.php');?>

  <section id="inner-banner">

    <div class="container">

      <h1>Booked date and time</h1>

    </div>

  </section>

  <!--INNER BANNER END-->



  <!--MAIN START-->

  <div id="main">

    <!--RECENT JOB SECTION START-->

    <section class="recent-row padd-tb job-detail">

      <div class="container">

        <div class="row">

          <div class="col-md-12 col-sm-8">

            <div id="content-area">
              <div class="box">
                <table class="table table-bordered table-striped table-vcenter">
                    <thead>
                        <tr>
                            <th style="color:#000;">Date</th>
                           <th style="color:#000;">Time</th>
                            </tr>
                    </thead>
                    <tbody>
              <?php
            $sql="SELECT * from tblapplyjob";
            $query = $dbh -> prepare($sql);
            $query->execute();
            $results=$query->fetchAll(PDO::FETCH_OBJ);

            $cnt=1;
            if($query->rowCount() > 0)
            {
            foreach($results as $row)
            {               ?>
              <tr>
                <td class="font-w600" style="color:#000;"><?php  echo htmlentities($row->EDate);?></td>
                <td class="font-w600" style="color:#000;"><?php  echo htmlentities($row->ETime);?></td>
                  </tr>
              <?php $cnt=$cnt+1;}} ?>
            </tbody>
        </table>
              </div>

          </div>

        </div>
      </div>
    </div>


    </section>

    <!--RECENT JOB SECTION END-->



  <!--MAIN END-->



  <!--FOOTER START-->

 <?php include_once('includes/footer.php');?>

</div>

<!--WRAPPER END-->



<!--jQuery START-->

<!--JQUERY MIN JS-->

<script src="js/jquery-1.11.3.min.js"></script>

<!--BOOTSTRAP JS-->

<script src="js/bootstrap.min.js"></script>

<!--OWL CAROUSEL JS-->

<script src="js/owl.carousel.min.js"></script>

<!--BANNER ZOOM OUT IN-->

<script src="js/jquery.velocity.min.js"></script>

<script src="js/jquery.kenburnsy.js"></script>

<!--SCROLL FOR SIDEBAR NAVIGATION-->

<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>

<!--FOR CHECKBOX-->

<script src="js/form.js"></script>

<!--CUSTOM JS-->

<script src="js/custom.js"></script>

</body>

</html>
