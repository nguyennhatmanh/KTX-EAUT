<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="../admin/template/css/login.css">
   <script src="/shoponi/jquery/jquery.js"></script>
   <script src="/shoponi/view/bootstrap4/js/bootstrap.js"> </script>
  <title></title>
</head>

<body>
    <section>
        <div class="form-box">
            <form action="" method="POST">
                <h2>Login</h2>
                <div class="inputbox">
                    <ion-icon name="mail-outline"></ion-icon>
                    <input type="text" name="email" required>
                    <label for="">Mã Nhân Viên</label>
                </div>
                <div class="inputbox">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <input type="password" name="pass" required>
                    <label for="">Password</label>
                </div>
                <div class="forget">
                    <label for=""><input type="checkbox">Remember me  <a href="#">Forget password</a></label>
                </div>
                <button type="submit" name="login">Log in</button>
                <div class="register">
                    <p>Don't have a account <a href="#">Register</a></p>
                </div>
            </form>
        </div>
<?php
 include_once('../config/database.php');
  @session_start();
   // check đăng nhập
  if (isset($_SESSION['nv_admin'])) {
     header('location:index.php');
  }
  if(isset($_POST['login'])){
    $email=$_POST['email'];
    $matkhau=$_POST['pass'];
    $sql_dangnhap="select * from NhanVien where  MaNV ='$email' and MatKhau='$matkhau'";
    $run_dangnhap=mysqli_query($conn,$sql_dangnhap);
    $dangnhap=mysqli_fetch_array($run_dangnhap);
    $count_dangnhap=mysqli_num_rows($run_dangnhap);
    if($count_dangnhap==0){
      echo '<script>alert("Sai tài khoản hoặc mật khẩu ! Xin mời nhập lại .")</script>';
    }else{
      $_SESSION['nv_admin']=$dangnhap;
      
                      
      header('location:index.php');
      
    }
                
  }
?>
    </section>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>
