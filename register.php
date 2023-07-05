<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> b8458b2 (api)

<?php
include 'connection.php';
if(isset($_POST['sub'])){
  $nm =$_POST['name']; 
  $em = $_POST['email'];
  $ph = $_POST['phone_no'];
  $password = $_POST['psw'];
  $cpass = $_POST['cpsw'];

  mysqli_query($con,"INSERT INTO register(name,email,phone_no,password,confirm_password,type)values('$nm','$em','$ph',$password','$cpass','admin')");
  header("location:index.php");
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Pages / Register - NiceAdmin Bootstrap Template</title>
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

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
<!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                    <p class="text-center small">Enter your personal details to create account</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate method="post">
                    <div class="col-12">
                      <label for="yourName" class="form-label"> Name</label>
                      <input type="text" name="name" class="form-control" id="yourName" required>
                      <div class="invalid-feedback"></div>
                    </div>

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">email</label>
                      <input type="text" name="email" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback"></div>
                    </div>
                    <div class="col-12">
                      <label for="yourEmail" class="form-label">phone no</label>
                      <input type="text" name="phone_no" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback"></div>
                    </div>

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Password</label>
                      <input type="text" name="psw" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback"></div>
                    </div>
                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Confirm Password</label>
                      <input type="text" name="cpsw" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback"></div>
                    </div>


                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" name="terms" type="checkbox" value="" id="acceptTerms" required>
                        <label class="form-check-label" for="acceptTerms">I agree and accept the <a href="#">terms and conditions</a></label>
                        <div class="invalid-feedback">You must agree before submitting.</div>
                      </div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" name="sub">Create Account</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Already have an account? <a href="index.php">Log in</a></p>
                    </div>
                  </form>

                </div>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

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
<?php
include 'connect.php';
$nme = $_POST['name'];
$eml = $_POST['email'];
$pne = $_POST['phone_no'];
$tpe = $_POST['type'];
$pwrd = $_POST['password'];
$cpwrd = $_POST['confirmpassword'];
$sql = mysqli_query($con,"INSERT INTO register(name,email,phone_no,type,password,confirmpassword)values('$nme','$eml','$pne','$tpe','$pwrd','$cpwrd')");
if ($sql){
    $my['result'] = 'success';
   
}else{
    $my['result'] = 'failed';
}
echo json_encode($my);
>>>>>>> 2c90178 (api)
>>>>>>> b8458b2 (api)
