 <?php 
if (isset($_SESSION['sv_login'])) {
    $sv=$_SESSION['sv_login'];
    $masv=$sv['MaSV'];
    $sql="select * from sinhvien where MaSV=$masv";
    $rs=mysqli_query($conn,$sql);
    $row=mysqli_fetch_array($rs);
//?>
    <div class="cart">
      <div class="col-sm-12  mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
          <h5 class="card-title text-center">Đăng Ký Phòng KÝ TÚC XÁ</h5><hr>

           <form class="col-md-12 m-auto" action="xuly/main.php?action=dangkyphong" method="POST">
              <div class="form-row">
                 <div class="form-group col-sm-6">
                    <label for="myEmail">Mã sinh viên</label>
                    <input type="text" class="form-control"   value="<?php echo $row['MaSV'] ?>" disabled>
                    <input hidden class="form-control" name="masv"  value="<?php echo $row['MaSV'] ?>">
                 </div>
                 <div class="form-group col-sm-6">
                    <label for="myPassword">Họ và tên</label>
                    <input type="text" class="form-control" id="myPassword"  value="<?php echo $row['HoTen'] ?>" disabled>
                 </div>
              </div><hr>

              <div class="form-group">
                <caption>Đây là Thông Tin Giá Phòng:</caption>
                <br><br>
                <table class="table text-center badge-light">
                  <thead class="badge-info">
                    <tr>
                      <th>#</th><th>Học Kỳ</th><th>Phòng 4 Người </th><th>Phòng 6 Người </th><th>Phòng 8 Người </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                       <td>1 </td><td>1 & 2</td><td>1,250,000đ</td><td>800,000đ</td><td>600,000đ</td>
                    </tr>
                    <tr>
                       <td>2</td><td>hè</td><td></td><td></td><td>365,000đ</td>
                    </tr>
                  </tbody>
                </table>
              </div><hr>
              <div class="form-group">
                 <label for="inputAddress">Chọn loại phòng muốn ở:</label>
                     <div class="custom-control custom-checkbox" style="margin-left: 30px;">
                        <input type="radio" class="custom-control-input" id="customCheck1" value="4" name="sno" checked>
                        <label class="custom-control-label" for="customCheck1"><h5> Phòng 4 Người</h5></label>
                    </div>
                    <div class="custom-control custom-checkbox" style="margin-left: 30px;">
                        <input type="radio" class="custom-control-input" id="customCheck2" value="6" name="sno"  >
                        <label class="custom-control-label" for="customCheck2"><h5>Phòng 6 Người</h5></label>
                    </div>
                    <div class="custom-control custom-checkbox" style="margin-left: 30px;">
                        <input type="radio" class="custom-control-input" id="customCheck3" value="8" name="sno"  >
                        <label class="custom-control-label" for="customCheck3"><h5>Phòng 8 Người</h5></label>
                    </div>
              </div>
              <div class="form-group">
                 <label for="inputAddress2"><span style="color: red;font-size: 20px;">*</span>Lưu ý :</label>
                 <label>Hệ thống sẽ tự động chọn phòng cho bạn theo yêu cầu bạn đã chọn. Hệ thống sẽ gửi thông báo sau!. Nên đăng xuất tài khoản sau khi đăng ký phòng để hệ thống cập nhật dữ liệu</label>
              </div>
              <button type="sub" name="dangkyphong" class="btn btn-lg btn-primary btn-block text-uppercase ">Đăng ký phòng</button>
           </form></div>
         </div>
       </div>
     </div>
<?php 


}
else{
    header('location:index.php?action=login');
}
?>