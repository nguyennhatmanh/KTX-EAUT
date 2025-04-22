<?php
	include_once('../config/database.php');
	if(isset($_GET['view'])){
		$view=$_GET['view'];
		switch ($view) {
			case 'quanlytintuc':
				?><h4>Quản Lý Tin Tức -> Danh Sách Tin Tức </h4><hr> <?php
					include_once('quanlytintuc/themtintuc.php');
					include_once('quanlytintuc/danhsachtintuc.php');
				break;

			case 'sua':
				?><h4>Quản Lý Tin Tức -> Cập nhật tin tức </h4><hr> <?php
					include_once('quanlytintuc/suatintuc.php');
				break;
			default:

				break;
		}
	}
	else{
		include_once('dondathang/dondathang.php');
	}


?>