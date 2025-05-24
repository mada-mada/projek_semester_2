<?php
include "koneksi.php";

if(isset($_GET['detail'])){
    $id = $_GET['detail'];

    $query= "SELECT a.*, o.org_name 
              FROM articles a 
              JOIN organizations o ON a.organization_id = o.organization_id 
              WHERE a.article_id = '$id'";
    
    $sql=mysqli_query($connection,$query);

 if ($result = mysqli_fetch_assoc($sql)) {
        // Data ditemukan, lanjut ke tampilan
    } else {
        echo "Artikel tidak ditemukan.";
        exit;
    }
} else {
    echo "ID artikel tidak valid.";
    exit;

 
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>projek</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../style/style_3.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
    <div class="container-fluid">
        <a class="navbar-brand poppins" href="#">Artify</a>
        <div class="collapse navbar-collapse">
        </div>
        <div class="nav-right my-2 my-lg-0 ">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link rubik-title" href="index.php">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link rubik-title" href="about.php">ABOUT</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle rubik-title" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        KATEGORI
                    </a>
                    <ul class="dropdown-menu">
                          <li><a class="dropdown-item rubik-artikel" href="kategori.php?kategori=1">KAMPUS</a></li>
                         <li><a class="dropdown-item rubik-artikel" href="kategori.php?kategori=2">ORMAWA</a></li>
                         <li><a class="dropdown-item rubik-artikel" href="kategori.php?kategori=3">UKK</a></li>
                         <li><a class="dropdown-item rubik-artikel" href="kategori.php?kategori=4">UKM</a></li>
                         <li><a class="dropdown-item rubik-artikel" href="kategori.php?kategori=5">ORDA</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <h2 class="rubik-headline"><?= $result['title'];?></h2>
    <img src="../folder-foto/<?= $result['image'];?>" alt="" class="img-fluid mx-auto d-block image img-article">
    <div class="rubik-artikel">
    <p class><?= $result['content'];?></p>
    </div>
    <p class="mt-5 rubik-artikel"> artikel dibuat pada tanggal : <?= date('Y-m-d', strtotime($result['created_at'])); ?></p>
</div>
<footer class="footer rubik-artikel">
    <div class="container">
        <div class="row">
            <!-- Footer Left -->
            <div class="col-lg-4 footer-left">
                <h3>Lorem ipsum dolor sit amet.</h3>
                <div class="logo">
                    <img src="/img/png-clipart-bandung-state-polytechnic-indramayu-state-polytechnic-politeknik-negeri-pontianak-technical-school-penelusuran-minat-dan-kemampuan-politeknik-negeri-telp-logo-engineering-removebg-preview.png" alt="" class="polindra">
                </div>
                <p class="text-kiri">Lorem ipsum dolor sit amet.</p>
            </div>

            <!-- Footer Center -->
            <div class="col-lg-4 footer-center text-center">
                <div class="d-flex flex-column align-items-center">
                    <div class="d-flex align-items-center mb-3">
                       <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M11.5 9A2.5 2.5 0 0 1 14 6.5c1.1 0 2.03.71 2.37 1.69c.08.26.13.53.13.81a2.5 2.5 0 0 1-2.5 2.5c-1.09 0-2-.69-2.36-1.66c-.09-.26-.14-.55-.14-.84M5 9c0 4.5 5.08 10.66 6 11.81L10 22S3 14.25 3 9c0-3.17 2.11-5.85 5-6.71C6.16 3.94 5 6.33 5 9m9-7c3.86 0 7 3.13 7 7c0 5.25-7 13-7 13S7 14.25 7 9c0-3.87 3.14-7 7-7m0 2c-2.76 0-5 2.24-5 5c0 1 0 3 5 9.71C19 12 19 10 19 9c0-2.76-2.24-5-5-5"/></svg>
                        <p class="mb-0"><span>Lorem ipsum dolor sit amet.</span></p>
                    </div>
                    <div class="d-flex align-items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"><path stroke-dasharray="64" stroke-dashoffset="64" d="M4 5h16c0.55 0 1 0.45 1 1v12c0 0.55 -0.45 1 -1 1h-16c-0.55 0 -1 -0.45 -1 -1v-12c0 -0.55 0.45 -1 1 -1Z"><animate fill="freeze" attributeName="stroke-dashoffset" dur="0.6s" values="64;0"/></path><path stroke-dasharray="24" stroke-dashoffset="24" d="M3 6.5l9 5.5l9 -5.5"><animate fill="freeze" attributeName="stroke-dashoffset" begin="0.6s" dur="0.2s" values="24;0"/></path></g></svg>
                        <p class="mb-0">testing@gmail.com</p>
                    </div>
                </div>
            </div>

            <!-- Footer Right -->
            <div class="col-lg-4 footer-right">
                <h3>About Us</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.</p>
            </div>
        </div>
    </div>
</footer>
<script src="/js/bootstrap.bundle.min.js"></script>
</body>