<?php if(get_settings('recaptcha')): ?>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
<?php endif; ?>

<!-- TOP LANDING SECTION -->
<div style="height:100vh;width:100%; clear: both; background-image: url(<?php echo base_url().'assets/frontend/flixer/images/signin_banner.jpg';?>)">
	<!-- logo -->
	<div style="float: left;">
		<a href="<?php echo base_url();?>index.php?home">
		<img src="<?php echo base_url();?>/assets/global/eMax Logo Banner-01.png" style="margin: 18px 40px; height: 50px;" />
		</a>
	</div>
	<div class="row">
		<div class="col-lg-4 col-lg-offset-6" style="clear: both;">
			<div class="login_body">
				<?php 
					if ($this->session->flashdata('signin_result') == 'failed'):
					?>
				<!-- ERROR MESSAGE -->
				<div class="alert alert-dismissible alert-danger">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<?php echo get_phrase('Login_failed! Please_try_again.');?>
				</div>
				<?php endif;?>
				<div class="login_box">
					<form method="post" action="<?php echo base_url();?>index.php?home/signin">
						<h3 class="input_wrap"><?php echo get_phrase('sign_in_header');?></h3>
						<div class="input_wrap">
							<input type="email" name="email" placeholder="Username or Email" required/>
						</div>
						<div class="input_wrap">
							<input type="password" name="password" placeholder="Password" required/>
						</div>
						<?php if(get_settings('recaptcha')): ?>
							<div class="form-group" style="margin:10px 0px 5px;">
							<div class="g-recaptcha" data-sitekey="<?php echo get_settings('recaptcha_sitekey'); ?>"></div>
							</div>
						<?php endif; ?>
						<button style=" width: 100%; margin: 20px 0px;"> <?php echo get_phrase('sign_in');?> </button>
					</form>
				</div>
				<hr>
				<a href="<?php echo base_url();?>index.php?home/forget"><?php echo get_phrase('Forget_password');?>?</a>
				|
				<a href="<?php echo base_url();?>index.php?home/signup"><?php echo get_phrase('Sign_up');?></a>
			</div>
		</div>
	</div>
</div>
<!-- MIDDLE TAB SECTION -->
