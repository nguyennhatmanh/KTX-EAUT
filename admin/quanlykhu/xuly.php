<?php
session_start();
include_once('../../config/database.php');
if(isset($_GET['action'])){
	$action=$_GET['action'];
	switch ($action) {
		case 'sua':
			$mk=$_GET['mk'];
      $tk=$_GET['tk'];
      $gt=$_GET['gt'];
        $sql="update Khu set TenKhu='$tk', Sex='$gt' where MaKhu='$mk'" ;
        $rs=mysqli_query($conn,$sql);
        if($rs){
        					header('location:../index.php?action=khu&view=khu&thongbao=sua');
        }
			break;

      case 'xoa':
     $mk=$_GET['mk'];;
     $bang_lien_quan = array("phong");

     $lien_quan = false;

     // Kiểm tra từng bảng liên quan
     foreach ($bang_lien_quan as $bang) {
         $sql_check = "SELECT COUNT(*) FROM $bang WHERE MaKhu = '$mk'";
         $result_check = mysqli_query($conn, $sql_check);
         $row_check = mysqli_fetch_array($result_check);

         if ($row_check[0] > 0) {
             $lien_quan = true;
             break; // Dừng kiểm tra nếu tìm thấy liên quan
         }
     }
     if($lien_quan){
       header('location:../index.php?action=khu&view=khu&thongbao=lienquan');
     }else{
       $sql="delete from Khu where MaKhu='$mk'";
       $rs=mysqli_query($conn,$sql);
       if($rs){
             header('location:../index.php?action=khu&view=khu&thongbao=xoa');
       }
     }
      break;

    case 'them':
      $mk=$_GET['mk'];
      $tk=$_GET['tk'];
      $gt=$_GET['gt'];
      $sql2= "select * from khu where MaKhu = '$mk'";
      $rs2=mysqli_query($conn,$sql2);
      $row2=mysqli_fetch_array($rs2);
      $dem2=mysqli_num_rows($rs2);
      if ($dem2 < 1){
        $sql="insert into khu( MaKhu, TenKhu, Sex ) values('$mk','$tk','$gt')" ;
        $rs=mysqli_query($conn,$sql);
        if($rs){
                  header('location:../index.php?action=khu&view=khu&thongbao=them');
        }
      }else{
        header('location:../index.php?action=khu&view=khu&thongbao=loi');
      }
      break;  
		default:
			# code...
			break;
	}
}


?>