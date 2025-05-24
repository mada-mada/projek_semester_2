<?php
include "koneksi.php";

// Ambil nama user dari cookie
$nama = $_COOKIE['username'] ?? '';
$queryadmin = "SELECT * FROM admins WHERE username='$nama'";
$admin = mysqli_query($connection, $queryadmin);
$row = mysqli_fetch_assoc($admin);
$admin_id = $row['admin_id'] ?? '';

// Ambil ID organisasi berdasarkan admin
$queryorganisasi = "SELECT * FROM organizations WHERE admin_id='$admin_id'";
$organisasisql = mysqli_query($connection, $queryorganisasi);
$row = mysqli_fetch_assoc($organisasisql);
$organisasi_id = $row['organization_id'] ?? '';

// Escape input untuk mencegah SQL error dan injection
$title = mysqli_real_escape_string($connection, $_POST['title']);
$content = mysqli_real_escape_string($connection, $_POST['content']);

// Handle upload gambar
$image = $_FILES['image']['name'];
$dir = "../../folder-foto/";
$filename = uniqid() . "_" . basename($_FILES['image']['name']);
$tmpFile = $_FILES['image']['tmp_name'];
$targetPath = $dir . $filename;

// Upload gambar
if (move_uploaded_file($tmpFile, $targetPath)) {
    echo "Gambar berhasil diupload ke: " . $targetPath;
} else {
    echo "Gagal mengupload gambar ke: " . $targetPath;
}

// Buat query INSERT
$created_at = date('Y-m-d H:i:s');
$query = "INSERT INTO articles (title, content, image, organization_id, admin_id, created_at)
          VALUES ('$title', '$content', '$filename', '$organisasi_id', '$admin_id', '$created_at')";

$sql = mysqli_query($connection, $query);

if ($sql) {
    header("Location: index.php");
    exit();
} else {
    echo "Gagal menambahkan artikel. Error: " . mysqli_error($connection);
}

// Jika ada parameter ubah
$title = "";
$content = "";
$image = "";

if (isset($_GET['ubah'])) {
    $id_article = $_GET['ubah'];
    $queryedit = "SELECT * FROM articles WHERE article_id ='$id_article'";
    $sqledit = mysqli_query($connection, $queryedit);

    if ($sqledit) {
        $result = mysqli_fetch_assoc($sqledit);
        $title = $result['title'];
        $content = $result['content'];
        $image = $result['image'];
    }
}
?>
