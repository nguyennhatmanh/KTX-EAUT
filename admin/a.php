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
		<br>
		<h4 class="text-center">Thống Kê Dữ Liệu</h4>
		<br>
			<div class="text-center">
				<br>
				Sinh Viên
                <?php
                    $sql = "SELECT * FROM sinhvien";

                    $res = mysqli_query($conn , $sql);

                    $count = mysqli_num_rows($res);
                ?>
                <h1><?php echo $count;?></h1>
            </div>
			<div class="text-center">
				<br>
				Phòng
                <?php
                    $sql = "SELECT * FROM phong";

                    $res = mysqli_query($conn , $sql);

                    $count = mysqli_num_rows($res);
                ?>
                <h1><?php echo $count;?></h1>
            </div>
			<div class="text-center">
				<br>
				Khu
                <?php
                    $sql = "SELECT * FROM khu";

                    $res = mysqli_query($conn , $sql);

                    $count = mysqli_num_rows($res);
                ?>
                <h1><?php echo $count;?></h1>
            </div>
			<div class="text-center">
				<br>
				Tổng Tiền Điện Nước
                <?php
                    $sql4 = "SELECT SUM(TienDien)+SUM(TienNuoc) AS total FROM hoadondiennuoc";

                    $res4 = mysqli_query($conn , $sql4);

                    $row=mysqli_fetch_array($res4);

					$count = $row['total'];
					
                ?>
                <h1><?php echo $count. " Đ";?></h1>
            </div>
	</div>
</body>
</html>