<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="bootstrap4/css/bootstrap.css">
    <link rel="stylesheet" href="css.css">
	<link href="../font/Font Awesome/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="template/cssfont.css" rel="stylesheet">
	<link href="template/css/sb-admin-2.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script src="jquery/jquery.js"></script>
    <script src="bootstrap4/js/bootstrap.js"> </script>
</head>
<body>
	<?php session_start();
	  ob_start();
		include_once('config/database.php');
		include_once('include/header.php');
		include_once('include/main.php');
		include_once('include/footer.php');
	?>
</body>
</html>