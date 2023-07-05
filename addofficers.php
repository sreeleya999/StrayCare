
<?php
include 'connection.php';
if(isset($_POST['submit'])){
  $dno = $_POST['dyno'];
  $wno = $_POST['wkno'];
  $mno = $_POST['mhno'];
  $yno = $_POST['yrno'];
  $eno = $_POST['etno'];
  mysqli_query($con,"INSERT INTO straylogin(name,password,email,phone_no,location)values('$dno','$wno','$mno','$yno','$eno')");
  header("location:viewoffices.php");
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Mar 09 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
 <?php
 include 'header.php';
 ?>

 <!-- End Header -->

  <!-- ======= Sidebar ======= -->
 <?php
 include 'sidebar.php';
 ?>
  
  <!-- End Sidebar-->

  <main id="main" class="main">

    <!-- End Page Title -->

    <section class="section dashboard">
      <div class="row-lg-9">
        
      <div class="col-lg-6">

<div class="card">
  <div class="card-body">
  <br>
  
    <h5 class="card-title">Officers</h5>

    <!-- Vertical Form -->
    <form class="row g-2" method="post">


      <div class="col-13">
        <label for="inputEmail4" class="form-label">Name</label>
        <input type="text" name="dyno" class="form-control" id="inputEmail4">
      </div>
      <div class="row mb-3">
      <label for="inputEmail4" class="form-label">Password</label>
        <input type="text" name="wkno" class="form-control" id="inputEmail4">
      </div> 
      <div class="row mb-3">
      <label for="inputEmail4" class="form-label">Email</label>
        <input type="text" name="mhno" class="form-control" id="inputEmail4">
      </div> 
      <div class="row mb-3">
      <label for="inputEmail4" class="form-label">Phone no</label>
        <input type="text" name="yrno" class="form-control" id="inputEmail4">
      </div>          
      <div class="row mb-3">
      <label for="inputEmail4" class="form-label">Location</label>
        <input type="text" name="etno" class="form-control" id="inputEmail4">
      </div> 
      
      <div class="text-center">
        <button type="submit"name="submit" class="btn btn-primary">Submit</button>
        
    </form><!-- Vertical Form -->

  </div>


  </div>
</div>

  </div>
</div>

</div>
</div>
</section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html> 