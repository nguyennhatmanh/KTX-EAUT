<?php
session_start();
include_once('../../config/database.php');
if(isset($_GET['action'])){
	$action=$_GET['action'];
	switch ($action) {
    case 'them':
        $manv=$_GET['manv'];
        $ten=$_GET['ten'];
        $ns=$_GET['ns'];
        $dc=$_GET['dc'];
        $sdt=$_GET['sdt'];
        $mk=$_GET['pass'];
        $q=$_GET['q'];
        $sql2= "select * from nhanvien where MaNV = '$manv'";
        $rs2=mysqli_query($conn,$sql2);
		    $row2=mysqli_fetch_array($rs2);
		    $dem2=mysqli_num_rows($rs2);
        if ($dem2 < 1){
        $sql="insert into nhanvien(MaNV,HoTen,NgaySinh,DiaChi,SDT,MatKhau,Quyen) value('$manv','$ten','$ns','$dc','$sdt','$mk','$q')" ;
        $rs=mysqli_query($conn,$sql);
          if($rs){
                    header('location:../index.php?action=nhanvien&view=all&thongbao=them');
          }
        }else{
          header('location:../index.php?action=nhanvien&view=all&thongbao=loi');
        }
        break;
		case 'capnhap':
  			$manv=$_GET['manv'];
        $ten=$_GET['ten'];
        $ns=$_GET['ns'];
        $dc=$_GET['dc'];
        $sdt=$_GET['sdt'];
        $q=$_GET['q'];
        $sql="update nhanvien set HoTen='$ten', NgaySinh='$ns',DiaChi='$dc',SDT='$sdt',Quyen='$q' where MaNV='$manv'" ;
        $rs=mysqli_query($conn,$sql);
          if($rs){
          					header('location:../index.php?action=nhanvien&view=all&thongbao=sua');
          }
  			break;
    case 'xoa':
        $manv=$_GET['manv'];
        $bang_lien_quan = array("chitietdangky", "thongbao", "tintuc");

        $lien_quan = false;

        // Kiểm tra từng bảng liên quan
        foreach ($bang_lien_quan as $bang) {
            $sql_check = "SELECT COUNT(*) FROM $bang WHERE MaNV = '$manv'";
            $result_check = mysqli_query($conn, $sql_check);
            $row_check = mysqli_fetch_array($result_check);

            if ($row_check[0] > 0) {
                $lien_quan = true;
                break; // Dừng kiểm tra nếu tìm thấy liên quan
            }
        }
        if($lien_quan){
          header('location:../index.php?action=nhanvien&view=all&thongbao=lienquan');
        }else{
          $sql="delete from nhanvien where MaNV='$manv'";
          $rs=mysqli_query($conn,$sql);
          if($rs){
                header('location:../index.php?action=nhanvien&view=all&thongbao=xoa');
          }
        }
      break;

		default:
			# code...
			break;
	}
}


?>