<?php
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> b8458b2 (api)
include 'connection.php';
$data = mysqli_query($con,"select * from policelogin");
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

      <div class="row">
 <section class="section">
      <div class="row">
        <div class="col-lg-12">
        <br>
    <a href="addpolice.php" class="btn btn-primary"> +ADD </a>
          <div class="card">
            
            <div class="card-body">
              <h5 class="card-title">Police</h5>

              <!-- Default Table -->
              <table class="table">
                <thead>
                  <tr>
                  <th scope="col">Sl_no</th>
                    <th scope="col">User Name</th>

                    <th scope="col">Password</th>
                    <th scope="col">Station</th>
                    <th scope="col">Phone no</th>
                   
                    
                  </tr>
                </thead>
                <tbody>
                <?php
                $count=0;
                  while($row = mysqli_fetch_assoc($data)){
                    $count++;
                    ?>
                  <tr>
                    <th scope="row"><?php echo $count; ?></th>
                    <td><?php echo $row['name'] ?></td>
                    <td><?php echo $row['password'] ?></td> 
                    <td><?php echo $row['station'] ?></td>
                    <td><?php echo $row['phone_no'] ?></td> 
                   
                  </tr>
                  <?php
                  }
                  ?>
                                  </tbody>
              </table>
              <!-- End Default Table Example -->
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

<<<<<<< HEAD
</html>
=======
</html>
=======
include 'connect.php';
$nm = $_POST['reporter_name'];
$tm = $_POST['time'];
$des = $_POST['description'];
$loc = $_POST['location'];

$sql = mysqli_query($con,"INSERT INTO police(reporter_name,time,description,location)values('$nm','$tm','$des','$loc')");
if ($sql){
    $my['result'] = 'success';
   
}else{
    $my['result'] = 'failed';
}
echo json_encode($my);
>>>>>>> 2c90178 (api)
>>>>>>> b8458b2 (api)
