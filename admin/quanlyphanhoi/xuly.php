<?php
session_start();
include_once('../../config/database.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require '../../admin/template/vendor/PHPMailer-master/src/Exception.php';
require '../../admin/template/vendor/PHPMailer-master/src/PHPMailer.php';
require '../../admin/template/vendor/PHPMailer-master/src/SMTP.php';

if(isset($_GET['action'])){
    $action=$_GET['action'];
    switch ($action) {
        case 'guiphanhoi':
            $maph=$_GET['maph'];
            $admin=$_SESSION['nv_admin'];$manv=$admin['MaNV'];
            date_default_timezone_set('Asia/Ho_Chi_Minh');
            $date=getdate();
            $ngay=$date['year']."-".$date['mon']."-".($date['mday'])." ".$date['hours'].":".$date['minutes'].":".$date['seconds'];
            if (isset($_POST['noiDungPhanHoi'])) {
                $noiDungPhanHoi = $_POST['noiDungPhanHoi'];
                $sql="update phanhoi set NV_NoiDung = '$noiDungPhanHoi', MaNV = '$manv', NgayPhanHoi = '$ngay', TrangThai = 'Đã phản hồi' where MaPH = '$maph'";
                $rs=mysqli_query($conn,$sql);
                if($rs){
                    // Lấy thông tin phản hồi và email sinh viên
                    $sql_get_feedback = "SELECT * FROM phanhoi WHERE MaPH = '$maph'";
                    $rs_get_feedback = mysqli_query($conn, $sql_get_feedback);
                    $phanhoi = mysqli_fetch_array($rs_get_feedback);

                    if ($phanhoi && $phanhoi['sinhvien_email']) {
                        $mail = new PHPMailer(true);

                        try {
                            // Cấu hình SMTP
                            $mail->isSMTP();
                            $mail->Host       = 'smtp.gmail.com'; // Thay bằng SMTP server của bạn
                            $mail->SMTPAuth   = true;
                            $mail->Username   = 'manh201510@gmail.com'; // Thay bằng username SMTP của bạn
                            $mail->Password   = 'fguqhyzoftaormwx'; // Thay bằng password SMTP của bạn
                            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
                            $mail->Port       = 465;
                            $mail->CharSet    = 'UTF-8';

                            // Người gửi
                            $mail->setFrom('manh201510@gmail.com', 'Ban Quản Lý KTX EAUT');

                            // Người nhận
                            $mail->addAddress($phanhoi['sinhvien_email'], '');

                            // Nội dung email
                            $mail->isHTML(true);
                            $mail->Subject = 'Phản hồi về ý kiến đóng góp của bạn (Mã PH: ' . $phanhoi['MaPH'] . ')';
                            $mail->Body    = '<p>Chào bạn,</p>' .
                                '<p>Chúng tôi xin phản hồi về ý kiến đóng góp của bạn với nội dung như sau:</p>' .
                                '<div style="border: 1px solid #ccc; padding: 10px; margin-bottom: 10px;">' .
                                    '<strong>Nội dung phản hồi ban đầu:</strong><br>' .
                                    nl2br(htmlspecialchars($phanhoi['SV_NoiDung'])) .
                                '</div>' .
                                '<div style="border: 1px solid #ccc; padding: 10px;">' .
                                    '<strong>Phản hồi từ Ban Quản Lý:</strong><br>' .
                                    nl2br(htmlspecialchars($noiDungPhanHoi)) .
                                '</div>' .
                                '<p>Trân trọng,<br>Ban Quản Lý KTX EAUT</p>';
                            $mail->AltBody = 'Chào bạn,\n\nChúng tôi xin phản hồi về ý kiến đóng góp của bạn với nội dung như sau:\n\n' .
                                '--- Nội dung phản hồi ban đầu: ---\n' .
                                $phanhoi['SV_NoiDung'] . '\n' .
                                '---\n\n' .
                                '--- Phản hồi từ Ban Quản Lý: ---\n' .
                                $noiDungPhanHoi . '\n' .
                                '---\n\n' .
                                'Trân trọng,\nBan Quản Lý KTX EAUT';

                            $mail->send();
                            header('location:../index.php?action=phanhoi&view=quanlyphanhoi&thongbao=guiphanhoithanhcong');
                        } catch (Exception $e) {
                            header('location:../index.php?action=phanhoi&view=quanlyphanhoi&thongbao=phanhoi_ok_email_fail&error=' . urlencode($mail->ErrorInfo));
                        }
                    } else {
                        header('location:../index.php?action=phanhoi&view=quanlyphanhoi&thongbao=phanhoi_ok_no_email');
                    }
                }
            }

            break;
        default:
            # code...
            break;
    }
}


?>