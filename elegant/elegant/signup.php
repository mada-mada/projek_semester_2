<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elegant Dashboard | Sign Up</title>
  <!-- Favicon -->
  <link rel="shortcut icon" href="./img/svg/logo.svg" type="image/x-icon">
  <!-- Custom styles -->
  <link rel="stylesheet" href="./css/style.min.css">
</head>

<body>
<?php
include "koneksi.php";
session_start();
if(isset($_COOKIE["username"])){
  header('Location: index.php?halaman=beranda');
}

if (isset($_SESSION['nama'])) {
    header('Location: index.php?halaman=beranda');
    exit;
}

try {
    if (isset($_POST['login'])) {
        $username = htmlspecialchars($_POST['username']);
        $password = htmlspecialchars($_POST['password']);

        // QUERY JOIN untuk mengambil data admin + organisasi + kategori
        $cekUser = mysqli_query($connection, "
            SELECT a.admin_id, a.username, a.password,
            o.organization_id, o.category_id
            FROM admins a
            JOIN organizations o ON o.admin_id = a.admin_id 
            WHERE a.username = '$username'
        ");
        $data = mysqli_fetch_assoc($cekUser);

        if ($cekUser->num_rows > 0) {
          if ($password === $data['password']) {
                $_SESSION['admin_id'] = $data['admin_id'];
                $_SESSION['organization_id'] = $data['organization_id'];
                $_SESSION['category_id'] = $data['category_id'];
                $_SESSION["timeout"] = time() + (24 * 60 * 60); // 1 hari
                setcookie("username","$username",strtotime('5 year'));
               

                header('Location: index.php?halaman=beranda');
                exit;
            } else {
                echo "<script>alert('Password salah!');</script>";
            }
        } else {
            echo "<script>alert('Username tidak ditemukan!');</script>";
        }
    }
} catch (Exception $e) {
    echo "Terjadi kesalahan: " . $e->getMessage();
}
?>

  <div class="layer"></div>
<main class="page-center">
  <article class="sign-up">
    <h1 class="sign-up__title">Get started</h1>
    <p class="sign-up__subtitle">Start creating the best possible user experience for you customers</p>
    <form class="sign-up-form form" action="" method="POST">
      <label class="form-label-wrapper">
        <p class="form-label">Name</p>
        <input class="form-input" type="text" name="username" placeholder="Enter your name" required>
      </label>
      <label class="form-label-wrapper">
        <p class="form-label">Password</p>
        <input class="form-input" type="password" name="password" placeholder="Enter your password" required>
      </label>
      <button class="form-btn primary-default-btn transparent-btn" name="login">login</button>
    </form>
  </article>
</main>
<!-- Chart library -->
<script src="./plugins/chart.min.js"></script>
<!-- Icons library -->
<script src="plugins/feather.min.js"></script>
<!-- Custom scripts -->
<script src="js/script.js"></script>
</body>

</html>