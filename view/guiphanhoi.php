<?php
    if (isset($_SESSION['sv_login'])) {
        $sv=$_SESSION['sv_login'];
        $masv=$sv['MaSV'];
        $sql="select * from sinhvien where MaSV=$masv";
        $rs=mysqli_query($conn,$sql);
        $row=mysqli_fetch_array($rs);

        // Lấy danh sách phản hồi của sinh viên
        $sql_feedback = "SELECT * FROM phanhoi WHERE masv = '$masv' ORDER BY ngaytao DESC"; // Thêm cột masv vào bảng feedbacks khi gửi
        $rs_feedback = mysqli_query($conn, $sql_feedback);

  ?>
    <h1>Gửi Phản Hồi</h1>
    <form action="xuly/main.php?action=guiphanhoi" method="POST">
    <input hidden id="inputText" class="form-control" name="masv" value="<?php echo $row['MaSV'] ?>"  >
        <div class="mb-3">
            <label for="email" class="form-label">Email nhận phản hồi:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Danh mục phản hồi:</label>
            <select id="category" class="form-select" name="category" required>
                <option value="">-- Chọn danh mục --</option>
                <option value="Điện Nước">Điện nước</option>
                <option value="Tiền phòng">Tiền phòng</option>
                <option value="Cơ sở vật chất">Cơ sở vật chất</option>
                <option value="Khác">Khác</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Nội dung phản hồi:</label>
            <textarea id="content" class="form-control" name="content" rows="5" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary" name ="sv_guiphanhoi">Gửi phản hồi</button>
    </form>

    <h2 class="mt-4">Lịch Sử Phản Hồi Của Bạn</h2>
    <div class="form-group">
        <label for="inputAddress2"><span style="color: red;font-size: 20px;">*</span>Lưu ý :</label>
        <label>Hệ thống sẽ gửi nội dung phản hồi về mail của sinh viên cung cấp. Sinh viên vui lòng check mail của mình khi trạng thái của thông tin là "Đã phản hồi"<div class=""></div></label>
    </div>
        <?php if (mysqli_num_rows($rs_feedback) > 0): ?>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead class="table-light">
                    <tr>
                        <th>Ngày Tạo</th>
                        <th>Ngày Được Phản Hồi</th>
                        <th>Danh Mục</th>
                        <th>Nội Dung</th>
                        <th>Trạng Thái</th>
                    </tr>
                </thead>
                <tbody>
                <?php while ($row_feedback = mysqli_fetch_array($rs_feedback)): ?>
                    <tr>
                        <td><?php echo date('d/m/Y', strtotime($row_feedback['NgayTao'])); ?></td>
                        <td><?php
                            if (!empty($row_feedback['NgayPhanHoi'])) {
                                echo htmlspecialchars(date('d/m/Y', strtotime($row_feedback['NgayPhanHoi'])));
                            } else {
                                echo '';
                            }
                            ?>
                        </td>
                        <td><?php echo htmlspecialchars($row_feedback['DanhMuc']); ?></td>
                        <td><?php echo htmlspecialchars(substr($row_feedback['SV_NoiDung'], 0, 30)) . '...'; ?></td>
                        <td>
                            <?php
                                $trangthai = htmlspecialchars($row_feedback['TrangThai']);
                                    if ($trangthai == 'Đang xử lý') {
                                        echo '<span class="text-warning">' . $trangthai . '</span>';
                                        } elseif ($trangthai == 'Đã phản hồi') {
                                        echo '<span class="text-success">' . $trangthai . '</span>';
                                        } else {
                                        echo $trangthai;
                                    }
                            ?>
                        </td>
                    </tr>
                <?php endwhile; ?>
                </tbody>
            </table>
        </div>
        <?php else: ?>
        <p>Chưa có phản hồi.</p>
        <?php endif; ?>
<?php
    }
   else{
    header('location:index.php?action=login');
   }
?>


