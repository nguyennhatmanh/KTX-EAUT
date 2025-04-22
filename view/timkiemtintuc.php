<?php
// Xử lý tìm kiếm
if (isset($_GET['tukhoa'])) {
    $tukhoa = $_GET['tukhoa'];
    $sql = "SELECT * FROM tintuc WHERE trangthai = 'hienthi' AND (TieuDe LIKE '%$tukhoa%' OR NoiDung LIKE '%$tukhoa%') ORDER BY ngaydang DESC";
} else {
    $sql = "SELECT * FROM tintuc WHERE trangthai = 'hienthi' ORDER BY ngaydang DESC";
}

$rs = mysqli_query($conn, $sql);
?>

<style>
.card {
    border: 1px solid #ddd;
    border-radius: 8px;
    margin-bottom: 20px;
}

.card-img-top {
    height: 200px;
    object-fit: cover;
}

.card-body {
    padding: 20px;
}

.card-title {
    margin-bottom: 10px;
}

.card-text {
    color: #555;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    word-break: break-word;
}
</style>

<div class="container">
    <h3 class="card-title text-center text-uppercase">Tin tức Ký Túc Xá</h3><hr>
    <div class="row">
        <h6 class="text-center px-3">Kết quả tìm kiếm '<?php echo $tukhoa;?>'</h6><hr>
        <div class="col-md-12">
            <form action="index.php" method="get">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Tìm kiếm tin tức..." name="tukhoa">
                    <div class="input-group-append">
                        <button name="action" value="timkiemtintuc" class="btn btn-outline-secondary" type="submit">Tìm kiếm</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="row">
        <?php
        while ($row = mysqli_fetch_array($rs)) { ?>
            <div class="col-md-12">
                <div class="card">
                    <div class="row no-gutters">
                        <div class="col-md-6">
                            <img src="<?php echo SITEURL; ?>admin/quanlytintuc/images/<?php echo $row['Anh']; ?>" alt="<?php echo $row['TieuDe']; ?>" style="width: 100%; height: auto; object-fit: cover;">
                        </div>
                        <div class="col-md-6">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $row['TieuDe']; ?></h5>
                                <p class="card-text"><?php echo $row['NoiDung']; ?></p>
                                <a class="ml-auto" href='index.php?action=chitiettintucktx&matt=<?php echo $row['MaTT']; ?>'>Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>