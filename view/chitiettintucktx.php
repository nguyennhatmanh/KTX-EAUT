<?php
$matt = $_GET['matt'];
$sql = "SELECT * FROM tintuc WHERE MaTT = $matt";
$rs = mysqli_query($conn, $sql);
if ($row = mysqli_fetch_array($rs)) {
    ?>
    <h2><?php echo $row['TieuDe']; ?></h2>
    <p>Ngày đăng: <?php echo $row['NgayDang']; ?></p>
    <hr class="badge-danger">
    <p><?php echo $row['NoiDung']; ?></p>
    <img class="mt-2" src="<?php echo SITEURL; ?>admin/quanlytintuc/images/<?php echo $row['Anh']; ?>" alt="<?php echo $row['TieuDe']; ?>" style="width: 100%;">
    <?php
} else {
    echo "Không tìm thấy tin tức.";
}
mysqli_close($conn);
?>