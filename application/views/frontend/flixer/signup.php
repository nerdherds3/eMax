<?php if(get_settings('recaptcha')): ?>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
<?php endif; ?>

<!-- TOP LANDING SECTION -->
<div style="width:100%; height:115vh; clear: both; background-image: url(<?php echo base_url().'assets/frontend/flixer/images/signup_banner.jpg';?>)">
	<!-- logo -->
	<div style="float: left;">
		<a href="<?php echo base_url();?>index.php?home">
		<img src="<?php echo base_url();?>/assets/global/eMax Logo Banner-01.png" style="margin: 18px 40px; height: 50px;" />
		</a>
	</div>
	<div style="float: right;margin: 18px 40px; height: 50px;">
		<a href="<?php echo base_url();?>index.php?home/signin" class="btn btn-danger"><?= get_phrase('sign_in'); ?></a>
	</div>
	<?php if(addon_status('blog')): ?>
		<div style="float: right;margin: 18px 40px; height: 50px;">
			<button><a href="<?php echo base_url();?>index.php?addons/blog" class="" style="color: #e50914;font-weight: 700;font-size: 20px;"><?= get_phrase('blog'); ?></a>
		</div>
	<?php endif; ?>
	<!-- ERROR MESSAGE -->
	<style>
		td{padding: 12px 15px; border-bottom: 1px solid #ccc;}
	</style>
	<div class="container">
		<div class="row">
			<!-- ERROR MESSAGE SHOWING IF DUPLICATE EMAIL FOUND -->
			<?php 
				if ($this->session->flashdata('signup_result') == 'failed'):
				?>
			<div class="alert alert-dismissible alert-danger" style="margin: 30px;">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
					<?php echo get_phrase('Email_already_exists! Please_try_again');?>.
			</div>
			<?php endif;?>
			<div class="centreContainer">
				<div class="col-lg-12" style="margin: 0px 20px;">
					<h3 class="input_wrap"><?php echo get_phrase('Sign_up_to_start_your_membership');?></h3>
				</div>
				<div class="col-lg-12" style="margin: 0px 20px;">
					<h4 class="input_wrap"><?php echo get_phrase('Create_your_account');?>:</h4>
				</div>
				<div class="regFormContainer">
					<div class="col-lg-12" style="margin: 0px 20px;">
						<form method="post" action="<?php echo base_url();?>index.php?home/signup">
							<div class="input_wrap">
								<input type="email" name="email" placeholder="Email" autocomplete="on" />
							</div>
							<div class="input_wrap">
								<input type="password" name="password" placeholder="Password" required/>
							</div>
							<?php if(get_settings('recaptcha')): ?>
								<div class="form-group" style="margin:10px 0px 5px;">
								<div class="g-recaptcha" data-sitekey="<?php echo get_settings('recaptcha_sitekey'); ?>"></div>
								</div>
							<?php endif; ?>
							<button type="submit"  class="btn btn-danger" style=" max-width: 150px; width: 100%; margin: 20px 0px;">
								<?php echo get_phrase('Register');?></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>