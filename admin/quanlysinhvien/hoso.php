<?php 
	$sql="select *from sinhvien";
	$rs=mysqli_query($conn,$sql);
?>


		<table class="table table-hover text-center ">
		<thead>
			<tr>
				<th>Mã SV</th><th>Họ Tên</th><th>Ngày Sinh</th><th>Giới Tính</th><th>Địa Chỉ</th><th>SĐT</th><th colspan="2">#</th>
			</tr>
		</thead>
		<tbody>
			<?php while ($row=mysqli_fetch_array($rs)) {?>
				<form action="quanlysinhvien/xuly.php" method="get" accept-charset="utf-8">
				<tr>
					<td><?php echo $row['MaSV'] ?></td><input hidden name="masv" value="<?php echo $row['MaSV'] ?>">
					<td><input class="form-control form-control-sm" type="text" name="ten" value="<?php echo $row['HoTen'] ?>"></td>
					<td><input  class="form-control form-control-sm" type="date" name="ns" value="<?php echo $row['NgaySinh'] ?>"></td>
					<td>
						<select class="form-control form-control-sm" name="gt" required>
							<?php $t=$row['GioiTinh']; $s="select DISTINCT GioiTinh from SinhVien";$rs1=mysqli_query($conn,$s);
                                while ($kq=mysqli_fetch_array($rs1)) { ?>
                                    <option <?php  if($kq['GioiTinh']==$t){ echo 'selected="selected"' ;} ?> value="<?php  echo $kq['GioiTinh']; ?>"> <?php echo $kq['GioiTinh']; ?></option>
                                <?php	}

                                ?>
						</select>
					</td>
					<td><input  class="form-control form-control-sm" type="text" name="dc" value="<?php echo $row['DiaChi'] ?>"></td>
					<td><input  class="form-control form-control-sm" type="text" name="sdt" value="<?php echo $row['SDT'] ?>"></td>
					<td><button  class="btn-sm btn-success btn" type="submit" name="action" value="capnhap">Cập Nhật</button></td>
					<td><a href="quanlysinhvien/xuly.php?action=xoa&masv=<?php echo $row['MaSV'] ?>"><i class="fas fa-backspace"></i></a></td>
				</tr>
				</form>	
	<?php	} ?>
			
		</tbody>
	</table>
	
