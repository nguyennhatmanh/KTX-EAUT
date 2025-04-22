<?php
$sql = "SELECT * FROM phanhoi WHERE TrangThai = 'Đã phản hồi' ORDER BY ngaytao DESC";
$result = mysqli_query($conn,$sql);
?>
    <?php if ($result->num_rows > 0): ?>
        <table class="table table-bordered">
            <thead class="table-light">
                <tr>
                    <th>Mã SV</th>
                    <th>Email Sinh Viên</th>
                    <th>Danh Mục</th>
                    <th>Nội Dung</th>
                    <th>Nội Dung Phản Hồi</th>
                    <th>Ngày Gửi</th>
                    <th>Trạng Thái</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($row['MaSV']); ?></td>
                        <td><?php echo htmlspecialchars($row['sinhvien_email']); ?></td>
                        <td><?php echo htmlspecialchars($row['DanhMuc']); ?></td>
                        <td><?php echo htmlspecialchars($row['SV_NoiDung']); ?></td>
                        <td><?php echo htmlspecialchars($row['NV_NoiDung']); ?></td>
                        <td><?php echo date('d/m/Y', strtotime($row['NgayTao'])); ?></td>
                        <td><?php echo '<span class="text-success">' . htmlspecialchars($row['TrangThai']) . '</span>' ?></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    <?php else: ?>
        <p>Chưa có phản hồi nào.</p>
    <?php endif; ?>

    <?php $conn->close(); ?>
