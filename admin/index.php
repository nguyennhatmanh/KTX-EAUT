
<?php
  ob_start();
  session_start();
	if(!isset($_SESSION['nv_admin'])){ header('location:login.php'); }

	else {
		include_once('../config/database.php');

		include_once('include/header.php'); ?>
		<div class="container-fluid">
			<div class=" row">
<?php  			include_once('include/navbar.php');
				include_once('include/controller.php'); ?>
			</div>
		</div>


<?php	include_once('include/footer.php'); }
	if (isset($_GET['thongbao'])) {
		$thongbao=$_GET['thongbao'];
		switch ($thongbao) {
			case 'them':
				echo '<script>alert("Thêm Thành Công .")</script>';
				break;
			case 'xoa':
				echo '<script>alert("Xóa Thành Công .")</script>';
				break;
			case 'sua':
				echo '<script>alert("Cập Nhật Thành Công .")</script>';
				break;
			case 'loi':
				echo '<script>alert("Mã trùng! Yêu cầu nhập lại")</script>';
				break;
			case 'lienquan':
				echo '<script>alert("Không thể xóa vì còn dữ liệu liên quan")</script>';
				break;
			case 'guiphanhoithanhcong':
				echo '<script>alert("Gửi phản hồi thành công về gmail của sinh viên!")</script>';
				break;
			case 'phanhoi_ok_no_email':
				echo '<script>alert("Sinh viên chưa nhập email khi gửi phản hồi!")</script>';
				break;
			default:
				# code...
				break;

	}
}

?>

