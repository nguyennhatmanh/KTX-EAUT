<?php
	include_once('../config/database.php');
	if(isset($_GET['view'])){
		$view=$_GET['view'];
		switch ($view) {
			case 'quanlyphanhoi':
				?><h4>Quản Lý Phản Hồi -> Xử Lý Phản Hồi </h4><hr> <?php
					include_once('quanlyphanhoi/danhsachphanhoi.php');
				break;
			case 'daphanhoi':
				?><h4>Quản Lý Phản Hồi -> Danh Sách Đã Phản Hồi </h4><hr> <?php
					include_once('quanlyphanhoi/danhsachdaphanhoi.php');
				break;
			default:
				break;
		}
	}
	else{
		include_once('dondathang/dondathang.php');
	}

?>