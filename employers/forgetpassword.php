<?php
session_start();
$str = uniqid(md5("djkdsjkk3948948)*(*&Hjdcscbhk"));
$token = trim(uniqid(md5($str)), " ");
$sent = "";

// check if reset token is already set
if($_SERVER['REQUEST_METHOD'] === "POST"){
  require_once "mail.php";
  require_once "db.php";
  $email = mysqli_real_escape_string($con, $_REQUEST['email']);
  $sql = "SELECT reset_pass FROM tblemployers where Email=?";


  if($query = $con->prepare($sql)){
    $query->bind_param("s", $param_email);
    $param_email = $email;
    if($query->execute()){
      $query->store_result();

      if($query->num_rows === 1){
        // get the token and resend the link
        $query->bind_result($reset_pass);
        if($query->fetch()){


          if($reset_pass != ""){

            // fetch token here and resend it in  email
            my_mail($reset_pass, $email);
            $sent = "We have sent you a link to reset password in your registerd email";
          } else{
            // create token here and send it in  email
          $sql = 'UPDATE tblemployers SET reset_pass="'.$token.'" WHERE Email="'.$email.'"';

               if($query = $con->prepare($sql)){
                 if($query->execute()){
                  my_mail($token, $email);
                   $sent = "We have sent you a link to reset password in your registerd email";
                 }else{
                   echo "please try again later";
                   $sent = "";
                 }
               }
          }

        }
      }else{
        echo "NO USER FOUND";
     }
    }

  }
  $con->close();

}
?>


<!doctype html>

<html lang="en">

<head>
<title>Service Provider | JOBS NEPAL</title>

<link href="../css/custom.css" rel="stylesheet" type="text/css">
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css">

<link href="../css/responsive.css" rel="stylesheet" type="text/css">
<link href="../css/owl.carousel.css" rel="stylesheet" type="text/css">
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="../css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,500,700,900' rel='stylesheet' type='text/css'>
</head>
<body>
<div style="margin-top:5%; padding:15px;" class="col-3 mx-auto shadow p-3 mb-5 bg-white rounded">
   <!-- message -->

<h3>Please enter your email!</h3>
    <div id="alert" style="display:none;" class="alert alert-danger" role="alert">

    </div>
    <form onsubmit="return validate()" action="forgetpassword.php" method="POST">
    <!-- if link is sent -->
    <p style="color:red;"><?php
        if($sent != ""){
          echo $sent;
        }
     ?></p>
        <div class="form-group ">
          <label for="exampleInputEmail1">Email address</label>
          <input id="email" type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <button type="submit" class="btn btn-primary">Request Password</button>
      </form>
    </div>
</body>
</html>
