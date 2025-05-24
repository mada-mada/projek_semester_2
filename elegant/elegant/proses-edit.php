<?php
include "koneksi.php"; // Pastikan koneksi berhasil

$title = "";
$content = "";
$image = "";

// Ambil data untuk form jika ada parameter GET ubah
if (isset($_GET['ubah'])) {
    $id_article = $_GET['ubah'];

    $queryedit = "SELECT * FROM articles WHERE article_id = '$id_article'";
    $sqledit = mysqli_query($connection, $queryedit);

    if ($sqledit) {
        $result = mysqli_fetch_assoc($sqledit);

        if ($result) {
            $title = $result['title'];
            $content = $result['content'];
            $image = $result['image'];
        }
    }
}

// Proses saat form disubmit
if (isset($_POST['edit'])) {
  $id_article = (int)$_POST['id_article'];
  $title = $_POST['title'];
  $content = $_POST['content'];
  $image_name = "";

  // Cek apakah ada file baru diupload
  if (isset($_FILES['image']) && $_FILES['image']['error'] === 0) {
      $dir = "../../folder-foto/"; // Pastikan folder ini ada dan bisa ditulisi
      $filename = uniqid() . "_" . basename($_FILES['image']['name']);
      $tmpFile = $_FILES['image']['tmp_name'];
      $targetPath = $dir . $filename;

      if (move_uploaded_file($tmpFile, $targetPath)) {
          $image_name = $filename;
      } else {
          echo "Gagal memindahkan file gambar.";
          exit();
      }
  } else {
      // Ambil nama gambar lama dari database jika tidak upload baru
      $stmt_img = $connection->prepare("SELECT image FROM articles WHERE article_id = ?");
      $stmt_img->bind_param("i", $id_article);
      $stmt_img->execute();
      $stmt_img->bind_result($image_name);
      $stmt_img->fetch();
      $stmt_img->close();
  }

  // Update data artikel
  $stmt_update = $connection->prepare("UPDATE articles SET title = ?, content = ?, image = ? WHERE article_id = ?");
  $stmt_update->bind_param("sssi", $title, $content, $image_name, $id_article);
  
  if ($stmt_update->execute()) {
      header("Location: index.php");
      exit();
  } else {
      echo "Error saat mengupdate data: " . $stmt_update->error;
  }

  $stmt_update->close();
}

?>
