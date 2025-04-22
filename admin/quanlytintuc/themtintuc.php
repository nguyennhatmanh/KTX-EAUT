<div class="col-sm-12  m-auto">
    <div class="card card-signin my-5">
        <div class="card-body">
            <form class="col-md-12 m-auto" action="quanlytintuc/xuly.php" method="POST" enctype="multipart/form-data">
                <div class="d-flex justify-content-center align-items-center">
                    <div class="form-group col-sm-3">
                    <label for="myEmail">Tiêu đề</label>
                    <input type="text" class="form-control" name="tieude" value="" required>
                    </div>

                    <div class="form-group col-sm-3">
                    <label for="myEmail">Nội dung</label>
                    <textarea name="noidung" class="form-control" required></textarea>
                    </div>

                    <div class="form-group col-sm-3">
                    <label for="myPassword">Trạng thái</label>
                    <select name="trangthai" class="form-control">
                        <option value="hienthi">Hiển thị</option>
                        <option value="an">Ẩn</option>
                    </select>
                    </div>

                    <div class="form-group col-sm-3">
                    <label for="anh">Ảnh</label>
                    <input type="file" name="image" class="form-control-file">
                </div>
                </div><hr>

                <button type="sub" name="action" value="them" class="btn btn-lg btn-primary btn-block text-uppercase col-3 m-auto">Thêm tin tức</button>
            </form>
        </div>
    </div>
</div>