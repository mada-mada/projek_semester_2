<?php
include "koneksi.php";
if(isset($_COOKIE["username"])){
setcookie("username","",strtotime(0));
session_destroy();
header('Location:signup.php');
}
