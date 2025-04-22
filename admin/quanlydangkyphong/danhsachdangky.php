<?php
	$sql="select * from chitietdangky where TinhTrang='chưa duyệt' and NgayDangKy is not null and NgayTraPhong is null Order by NgayDangKy DESC ";
	$rs=mysqli_query($conn,$sql);

?>
<table class="table table-hover m-auto text-center" style="font-size: 13px;">
	<thead class="badge-info">
		<tr>
			<th>Mã Đăng Ký</th> <th>Mã Sinh Viên</th><th>Mã Nhân Viên</th><th>Mã Phòng</th><th>Ngày Đăng Ký</th><th>Tình trạng</th><th>Chi Tiết</th><th colspan ="2" class="badge-danger"></th>
		</tr>
	</thead>
	<tbody>
 <?php $so=0;
	 while ($row=mysqli_fetch_array($rs)) {
	 	$masv=$row['MaSV'];$map=$row['MaPhong'];
	 	$sql2="select * from sinhvien where MaSV=$masv"; $rs2=mysqli_query($conn,$sql2);$row2=mysqli_fetch_array($rs2);
	 	$sql12="select * from phong where MaPhong='$map'"; $rs12=mysqli_query($conn,$sql12);$row12=mysqli_fetch_array($rs12);?>
		<tr>
			<td><?php echo $row['MaDK']; ?></td>
			<td title="<?php echo $row2['HoTen'];?>"><?php echo $row['MaSV']; ?></td>
			<td><?php echo $row['MaNV']; ?></td>
			<td title="<?php echo 'Phòng '.$row12['SoNguoiToiDa'].' Người';?>"><?php echo $row['MaPhong']; ?></td>
			<td><?php echo $row['NgayDangKy']; ?></td>
			<td><?php echo $row['TinhTrang']; ?></td>
			<td><a href="index.php?action=quanlydangkyphong&view=chitietdangky&madk=<?php echo $row['MaDK']; ?>" >Detail </a></td>
			<td><a href="quanlydangkyphong/xuly.php?action=duyet&madk=<?php echo  $row['MaDK']?>" >Duyệt <i class="fas fa-check"></i> </a></td>
			<td>
				<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#huyDangKyPhongModal<?php echo $row['MaDK']; ?>">
					<i class="fas fa-backspace"></i>
				</button>
				<div class="modal fade" id="huyDangKyPhongModal<?php echo $row['MaDK']; ?>" tabindex="-1" role="dialog" aria-labelledby="huyDangKyPhongModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="huyDangKyPhongModalLabel">Nhập lý do hủy đăng ký phòng</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form action="quanlydangkyphong/xuly.php?action=huy&madk=<?php echo $row['MaDK']; ?>" method="post">
									<div class="form-group">
										<label for="lyDoHuy">Lý do hủy:</label>
										<textarea class="form-control" id="lyDoHuy" name="lyDoHuy" rows="3" required></textarea>
									</div>
									<button type="submit" class="btn btn-danger">Xác nhận hủy</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</td>
		</tr>
 <?php	} ?>
	</tbody>

<?php


?>