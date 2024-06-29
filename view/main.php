<h2> Trang Ký Túc Xá - Đại Học Công Nghệ Đông Á </h2>
<br>
<?php if (isset($_SESSION['sv_login'])) {
		$sv=$_SESSION['sv_login'];
		$masv=$sv['MaSV'];
		echo "<h5>Xin chào sinh viên: ".$sv['HoTen']."</h5>";
		echo "<h6>Mã sinh viên: ".$sv['MaSV']."</h6>";
		$sql3="select * from chitietdangky where MaSV=$masv and NgayTraPhong is null order by MaDK LIMIT 1";
		$rs3=mysqli_query($conn,$sql3);
		$row3=mysqli_fetch_array($rs3);
	 
		$_SESSION['sv_chuatraphong']=$row3;
		
} ?>