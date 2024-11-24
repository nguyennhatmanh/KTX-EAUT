<?php 
session_start();
include_once('../../config/database.php');
date_default_timezone_set('Asia/Ho_Chi_Minh');
$date1=getdate(); $ngay1=$date1['year']."-".$date1['mon']."-".($date1['mday']);
if(isset($_GET['action'])){
	$action=$_GET['action'];
	switch ($action) {
		case 'sua':
			$mp=$_GET['mp'];
      $mk=$_GET['mk'];
      $sntd=$_GET['sntd'];
      $gia=$_GET['gia'];
        $sql="update Phong set MaKhu='$mk', SoNguoiToiDa='$sntd', Gia='$gia' where MaPhong='$mp'" ;
        $rs=mysqli_query($conn,$sql);
        if($rs){
        					header('location:../index.php?action=quanlyphong&view=quanlyphong&thongbao=sua');
        }
			break;
		  
      case 'xoa':
     $mp=$_GET['mp'];
        $sql="delete from Phong where MaPhong='$mp'";
        $rs=mysqli_query($conn,$sql);
        if($rs){
               header('location:../index.php?action=quanlyphong&view=quanlyphong&thongbao=xoa');
        }
      break;

    case 'them':
      $mp=$_GET['mp'];
      $mk=$_GET['mk'];
      $sntd=$_GET['sntd'];
      $gia=$_GET['gia'];
      $sql2= "select * from phong where MaPhong = '$mp'";
      $rs2=mysqli_query($conn,$sql2);
      $row2=mysqli_fetch_array($rs2);
      $dem2=mysqli_num_rows($rs2);
      if ($dem2 < 1){
        $sql="insert into phong(MaPhong, MaKhu, SoNguoiToiDa, Gia ) values('$mp','$mk',$sntd,$gia)" ;
        $rs=mysqli_query($conn,$sql);
        if($rs){
                  header('location:../index.php?action=quanlyphong&view=quanlyphong&thongbao=them');
        }
      }else{
        header('location:../index.php?action=quanlyphong&view=quanlyphong&thongbao=loi');
      }
      break;  
		default:
			# code...
			break;
	}
}


?>