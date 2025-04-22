<?php
$sql = "SELECT * FROM tintuc ORDER BY NgayDang DESC";
$rs = mysqli_query($conn, $sql);
?>

<table class="table table-hover text-center " style="font-size: 90%">
	<thead class="badge-info">
		<tr>
            <th>Tiêu đề</th>
            <th>Ảnh</th>
            <th>Ngày đăng</th>
            <th>Người đăng</th>
            <th>Trạng thái</th>
            <th colspan ="3" class="badge-danger"></th>
		</tr>
	</thead>
<?php

	while ($row=mysqli_fetch_assoc($rs)) { ?>
	<tbody>
		<tr>
            <td><?php echo $row['TieuDe']; ?></td>
            <td>
                <?php if (!empty($row['Anh'])) { ?>
                    <img src="<?php echo SITEURL; ?>admin/quanlytintuc/images/<?php echo $row['Anh']; ?>" alt="<?php echo $row['TieuDe']; ?>" style="max-width: 100%; max-height: 100px; object-fit:cover;">
                <?php } else { ?>
                    Không có ảnh
                <?php } ?>
            </td>
            <td><?php echo $row['NgayDang']; ?></td>
            <td><?php echo $row['MaNV']; ?></td>
            <td><?php echo $row['TrangThai']; ?></td>
            <td>
                <a href="index.php?action=tintuc&view=sua&matt=<?php echo $row['MaTT']; ?>">Cập Nhật</a>
            </td>
            <td>
                <a href="quanlytintuc/xuly.php?action=xoa&matt=<?php echo $row['MaTT']; ?>&anh=<?php echo $row['Anh']; ?>"><i class="fas fa-backspace"></i></a>
            </td>
		</tr>
	</tbody>
<?php }?>
</table>
<hr class="badge-danger">