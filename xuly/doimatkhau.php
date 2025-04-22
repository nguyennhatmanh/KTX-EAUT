<?php 
    if(isset($_POST['sv_doimatkhau'])){
        $masv = $_POST['masv'];
        $old_password = $_POST['old_password'];
        $new_password = $_POST['new_password'];
        $confirm_password = $_POST['confirm_password'];

        $sql_password = "SELECT MatKhau FROM sinhvien WHERE MaSV = '$masv'";
        $rs_password = mysqli_query($conn, $sql_password);
        $row_password = mysqli_fetch_assoc($rs_password);

        if ($old_password == $row_password['MatKhau']) {
            if ($new_password === $confirm_password) {
                $sql_update = "UPDATE sinhvien SET MatKhau = '$new_password' WHERE MaSV = '$masv'";
                $rs_update = mysqli_query($conn, $sql_update);
                if ($rs_update) {
                    header('location:../index.php?action=doimatkhau&tb=ok');
                } else {
                    header('location:../index.php?action=doimatkhau&tb=loi');
                }
            } else {
                header('location:../index.php?action=doimatkhau&tb=khongkhop');
            }
        } else {
            header('location:../index.php?action=doimatkhau&tb=saimatkhau');
        }
    }
?>