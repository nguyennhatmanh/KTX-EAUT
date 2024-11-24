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
        $sql="delete from Khu where MaKhu='$mk'";
        $rs=mysqli_query($conn,$sql);
        if($rs){

               header('location:../index.php?action=khu&view=khu&thongbao=xoa');
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