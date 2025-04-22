<?php
	$matt=$_GET['matt'];
	$sql="select * from tintuc where MaTT='$matt'";
	$rs=mysqli_query($conn,$sql);
	$row=mysqli_fetch_array($rs);

 ?>
 <div class="col-sm-12  m-auto">
    <div class="card card-signin my-5">
        <div class="card-body">
            <form class="col-md-12 m-auto" action="quanlytintuc/xuly.php" method="POST" enctype="multipart/form-data">
                <div class="d-flex justify-content-center align-items-center">
                    <input hidden class="form-control" name="matt" value="<?php echo $row['MaTT'] ?>">
                        <div class="form-group col-sm-3">
                            <label for="myEmail">Tiêu đề</label>
                            <input type="text" class="form-control" name="tieude" value="<?php echo $row['TieuDe'] ?>" required>
                        </div>

                        <div class="form-group col-sm-3">
                            <label for="myEmail">Nội dung</label>
                            <textarea name="noidung" class="form-control" required><?php echo $row['NoiDung'] ?></textarea>
                        </div>

                        <div class="form-group col-sm-3">
                            <label for="myPassword">Trạng thái</label>
                            <select name="trangthai" class="form-control">
                                <?php $t=$row['TrangThai']; $s="select DISTINCT trangthai from tintuc";$rs1=mysqli_query($conn,$s);
                                while ($kq=mysqli_fetch_array($rs1)) { ?>
                                    <option <?php  if($kq['trangthai']==$t){ echo 'selected="selected"' ;} ?> value="<?php  echo $kq['trangthai']; ?>"> <?php echo $kq['trangthai']; ?></option>
                                <?php	}

                                ?>
                            </select>
                        </div>

                        <div class="form-group col-sm-3">
                            <label for="anh">Ảnh</label>
                            <?php if (!empty($row['Anh'])) { ?>
                                <img src="<?php echo SITEURL; ?>admin/quanlytintuc/images/<?php echo $row['Anh']; ?>" alt="<?php echo $row['TieuDe']; ?>" style="max-width: 100%; max-height: 100%; object-fit:cover;">
                            <?php } ?>
                            <input type="file" name="image" class="form-control-file pt-4">
                        </div>
                        <input type="hidden" name="current_image" value="<?php echo $row['Anh']; ?>">
                </div><hr>
                    <button type="sub" name="action" value="sua" class="btn btn-lg btn-primary btn-block text-uppercase col-3 m-auto">Cập nhật tin tức</button>
            </form>
        </div>
    </div>
</div>