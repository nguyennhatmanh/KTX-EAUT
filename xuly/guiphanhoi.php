<?php

   if(isset($_POST['sv_guiphanhoi'])){
    $masv=$_POST['masv'] ;
    $email = $_POST['email'];
    $category = $_POST['category'];
    $content = $_POST['content'];

    $sql = "INSERT INTO phanhoi (sinhvien_email, danhmuc, sv_noidung, masv) VALUES ('$email','$category','$content', '$masv')";
    $rs=mysqli_query($conn,$sql);
    if($rs){
      header('location:../index.php?action=guiphanhoi&tb=ok');

    }else{
      header('location:index.php?action=guiphanhoi&tb=loi');
     }
}

 ?>