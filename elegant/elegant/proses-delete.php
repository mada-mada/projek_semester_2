<?php
include "koneksi.php";

if (isset($_GET['hapus'])) {
    $id_article = mysqli_real_escape_string($connection, $_GET['hapus']);

    $show = "SELECT * FROM articles WHERE article_id = '$id_article'";
    $sqlshow = mysqli_query($connection, $show);
    $result = mysqli_fetch_assoc($sqlshow);

    $filePath = "../../folder-foto/" . $result['image'];
    if (file_exists($filePath)) {
        unlink($filePath); 
    }

    $queryhapus = "DELETE FROM articles WHERE article_id = '$id_article'";
    $sql = mysqli_query($connection, $queryhapus);

    if ($sql) {
        header("Location: index.php"); 
        exit();
    } else {
        echo "Gagal menghapus artikel. Error: " . mysqli_error($connection);
    }
}
?>
