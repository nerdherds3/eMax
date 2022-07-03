
<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php echo $page_title; ?></title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url();?>assets/global/hnet.com-image.ico">
	<?php include 'includes_top.php';?>
</head>
<body>
	<div class="split left">
	</div>
	<div class="split right">
		<?php include 'payment_gateway.php'; ?>
	</div>
	<?php include 'includes_bottom.php'; ?>
</body>
</html>
