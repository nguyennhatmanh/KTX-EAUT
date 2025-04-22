<?php
$sql = "SELECT * FROM phanhoi WHERE TrangThai = 'Đang xử lý' ORDER BY ngaytao DESC";
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
                    <th>Ngày Gửi</th>
                    <th>Trạng Thái</th>
                    <th>Hành Động</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($row['MaSV']); ?></td>
                        <td><?php echo htmlspecialchars($row['sinhvien_email']); ?></td>
                        <td><?php echo htmlspecialchars($row['DanhMuc']); ?></td>
                        <td><?php echo htmlspecialchars($row['SV_NoiDung']); ?></td>
                        <td><?php echo date('d/m/Y', strtotime($row['NgayTao'])); ?></td>
                        <td><?php echo '<span class="text-warning">' . htmlspecialchars($row['TrangThai']) . '</span>' ?></td>
                        <td>
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#guiPhanHoiModal<?php echo $row['MaPH']; ?>">
                                <i class="fas fa-paper-plane"></i>
                            </button>
                            <div class="modal fade" id="guiPhanHoiModal<?php echo $row['MaPH']; ?>" tabindex="-1" role="dialog" aria-labelledby="guiPhanHoiModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="guiPhanHoiModalLabel">Nhập phản hồi cho sinh viên</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="quanlyphanhoi/xuly.php?action=guiphanhoi&maph=<?php echo $row['MaPH']; ?>" method="post">
                                                <div class="form-group">
                                                    <label for="noiDungPhanHoi">Phản hồi:</label>
                                                    <textarea class="form-control" id="noiDungPhanHoi" name="noiDungPhanHoi" rows="3" required></textarea>
                                                </div>
                                                <button type="submit" class="btn btn-success">Gửi</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
			            </td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    <?php else: ?>
        <p>Chưa có phản hồi nào.</p>
    <?php endif; ?>

    <?php $conn->close(); ?>
