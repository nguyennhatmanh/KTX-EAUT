<?php
session_start();
include_once('../../config/database.php');
if(isset($_POST['action'])){
	$action=$_POST['action'];
	switch ($action) {
    case 'sua':
    $matt=$_POST['matt'];
    $tieude=$_POST['tieude'];
    $noidung=$_POST['noidung'];
    $trangthai=$_POST['trangthai'];
    $nguoidang = $_SESSION['nv_admin']['MaNV'];
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $date=getdate();
    $ngaydang=$date['year']."-".$date['mon']."-".($date['mday'])." ".$date['hours'].":".$date['minutes'].":".$date['seconds'];
    $current_image = $_POST['current_image'];
    if(isset($_FILES['image']['name']))
    {
        $image_name = $_FILES['image']['name'];

        if($image_name!="")
        {
            $ext = end(explode('.', $image_name));
            $image_name = "Tintuc-".rand(0000,9999).".".$ext;
            $src = $_FILES['image']['tmp_name'];
            $dst = "../quanlytintuc/images/".$image_name;
            $upload = move_uploaded_file($src, $dst);
            if($current_image!="")
            {
                $remove_path = "../quanlytintuc/images/".$current_image;

                $remove = unlink($remove_path);
            }
        }else{
            $image_name = $current_image;
        }
    }
    else
    {
      $image_name = $current_image;
    }
    $sql2 = "UPDATE tintuc SET tieude='$tieude', noidung='$noidung', ngaydang='$ngaydang', manv='$nguoidang', trangthai='$trangthai'";
    if (!empty($image_name)) {
        $sql2 .= ", anh='$image_name'"; // Chỉ cập nhật ảnh nếu có ảnh mới
    }
    $sql2 .= " WHERE MaTT='$matt'";
    $rs2=mysqli_query($conn,$sql2);
    if($rs2){
        header('location:../index.php?action=tintuc&view=quanlytintuc&thongbao=sua');
    }
    break;

    case 'them':
      $tieude=$_POST['tieude'];
      $noidung=$_POST['noidung'];
      $trangthai=$_POST['trangthai'];
      $nguoidang = $_SESSION['nv_admin']['MaNV'];
      date_default_timezone_set('Asia/Ho_Chi_Minh');
      $date=getdate();
      $ngaydang=$date['year']."-".$date['mon']."-".($date['mday'])." ".$date['hours'].":".$date['minutes'].":".$date['seconds'];
      if(isset($_FILES['image']['name']))
      {
          $image_name = $_FILES['image']['name'];

          if($image_name!="")
          {
              $ext = end(explode('.', $image_name));
              $image_name = "Tintuc-".rand(0000,9999).".".$ext;
              $src = $_FILES['image']['tmp_name'];
              $dst = "../quanlytintuc/images/".$image_name;
              $upload = move_uploaded_file($src, $dst);
          }
      }
      else
      {
          $image_name = "";
      }
        $sql="insert into tintuc(tieude, noidung, ngaydang, manv, trangthai, anh) values('$tieude','$noidung','$ngaydang','$nguoidang', '$trangthai', '$image_name')" ;
        $rs=mysqli_query($conn,$sql);
        if($rs){
            header('location:../index.php?action=tintuc&view=quanlytintuc&thongbao=them');
        }
      break;
		default:
			# code...
			break;
	}
}

if(isset($_GET['action'])){
	$action=$_GET['action'];
  switch ($action) {
    case 'xoa':
        $matt=$_GET['matt'];
        $anh = $_GET['anh'];
        if($anh != "")
        {
            $path = "../quanlytintuc/images/".$anh;
            $remove = unlink($path);
        }
        $sql="delete from tintuc where MaTT='$matt'";
        $rs=mysqli_query($conn,$sql);
        if($rs){
            header('location:../index.php?action=tintuc&view=quanlytintuc&thongbao=xoa');
        }
        break;
		default:
			# code...
			break;
	}
}

?>