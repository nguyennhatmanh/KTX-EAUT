<?php
    if (isset($_SESSION['sv_login'])) {
       $sv=$_SESSION['sv_login'];
    $masv=$sv['MaSV'];
    $sql="select * from sinhvien where MaSV=$masv";
    $rs=mysqli_query($conn,$sql);
    $row=mysqli_fetch_array($rs);
?>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mb-4">Đổi Mật Khẩu</h2>
                <form action="xuly/main.php?action=doimatkhau" method="post">
                    <input type="hidden" name="masv" value="<?php echo $row['MaSV']; ?>">

                    <div class="form-group">
                        <label for="old_password">Mật Khẩu Cũ:</label>
                        <input type="password" class="form-control" id="old_password" name="old_password" required>
                    </div>

                    <div class="form-group">
                        <label for="new_password">Mật Khẩu Mới:</label>
                        <input type="password" class="form-control" id="new_password" name="new_password" required>
                    </div>

                    <div class="form-group">
                        <label for="confirm_password">Xác Nhận Mật Khẩu Mới:</label>
                        <input type="password" class="form-control" id="confirm_password" name="confirm_password" required>
                    </div>

                    <button class="btn btn-primary btn-block" name="sv_doimatkhau" type="submit">Đổi mật khẩu</button>
                </form>
            </div>
        </div>
    </div>
<?php
}
else{
header('location:index.php?action=login');
}
?>


