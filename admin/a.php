<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	  <link href="/shoponi/view/font/Font Awesome/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="template/cssfont.css" rel="stylesheet">
  <link href="template/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
	<div class="m-auto">
		<h2>
			Đây là trang ADMIN Ký Túc Xá - Đại Học Công Nghệ Đông Á !!!
		</h2>
		<br><br>
		<h3 class="text-center text-uppercase">Thống kê dữ liệu</h3>
        <div class="d-flex justify-content-center align-items-center w-100">
			<div class="p-4 text-center">
				<br>
				Số đơn đăng ký phòng chờ xử lý
                <?php
                    $sql = "select * from chitietdangky where TinhTrang='chưa duyệt' and NgayDangKy is not null and NgayTraPhong is null Order by NgayDangKy DESC";

                    $res = mysqli_query($conn , $sql);

                    $count = mysqli_num_rows($res);
                ?>
                <h1><?php echo $count;?></h1>
            </div>
			<div class="p-4 text-center">
				<br>
				Số đơn đăng ký chuyển phòng chờ xử lý
                <?php
                    $sql = "select * from chitietchuyenphong where TinhTrang='chưa duyệt' Order  by NgayDangKy DESC ";

                    $res = mysqli_query($conn , $sql);

                    $count = mysqli_num_rows($res);
                ?>
                <h1><?php echo $count;?></h1>
            </div>
			<div class="p-4 text-center">
				<br>
				Số đơn đăng ký trả phòng chờ xử lý
                <?php
                    $sql = "select * from chitietdangky where TinhTrang='chưa duyệt' and NgayTraPhong is not null  Order  by NgayTraPhong DESC ";

                    $res = mysqli_query($conn , $sql);

                    $count = mysqli_num_rows($res);
                ?>
                <h1><?php echo $count;?></h1>
            </div>
			<div class="p-4 text-center">
				<br>
				Số lượng phản hồi chờ xử lý
                <?php
                    $sql = "SELECT * FROM phanhoi WHERE TrangThai = 'Đang xử lý' ORDER BY ngaytao DESC";

                    $res = mysqli_query($conn , $sql);

					$count = mysqli_num_rows($res);

                ?>
                <h1><?php echo $count;?></h1>
            </div>
        </div>
	</div>
</body>
</html>