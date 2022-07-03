<!-- TOP LANDING SECTION -->
<div style="height:100vh;width:100%; clear: both;background-image: url(<?php echo base_url().'assets/frontend/flixer/images/signin_banner.jpg';?>)">
	
	<!-- logo -->
	<div style="float: left;">
		<a href="<?php echo base_url();?>index.php?home">
			<img src="<?php echo base_url();?>/assets/global/eMax Logo Banner-01.png" style="margin: 18px 40px; height: 50px;" />
		</a>
	</div>
    <div style="float: right;margin: 18px 40px; height: 50px;">
        <a href="<?php echo base_url();?>index.php?home/signin" class="btn btn-danger">
        	<?php echo get_phrase('sign_in');?></a>
    </div>
	<form action="<?php echo base_url();?>index.php?home/forget" method="post">
		<div class="row">
			<div class="col-lg-4 col-lg-offset-6" style="clear: both;">
				<div class="login_body">
					<?php 
					if ($this->session->flashdata('password_reset') == 'failed'):
					?>
						<!-- ERROR MESSAGE -->
						<div class="alert alert-dismissible alert-danger">
						  <button type="button" class="close" data-dismiss="alert">&times;</button>
						  	<?php echo get_phrase('Email_not_found');?>
						</div>
					<?php endif;?>
					
					<?php 
					if ($this->session->flashdata('password_reset') == 'success'):
					?>
						<!-- SUCCESS MESSAGE -->
						<div class="alert alert-dismissible alert-success">
						  <button type="button" class="close" data-dismiss="alert">&times;</button>
						  	<?php echo get_phrase('Password_sent_to_your_email');?>
						  <a href="<?php echo base_url();?>index.php?home/signin"><?php echo get_phrase('sign_in');?></a>
						</div>
					<?php endif;?>
					<div class="login_box">
						<h4 class="input_wrap"><?php echo get_phrase('Forgot_Email/_Password');?>
						<p><small><?php echo get_phrase('Enter_your_email_address. We_will_send_you_a_temporary_password.');?></small></p></h4>
						<div class="input_wrap">
							<input type="email" name="email" placeholder="Username or Email" required/>
						</div>
						<button type="submit" style=" width: 106%; margin: 20px 0px;"><?php echo get_phrase('Email_me');?></button>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>

<!-- MIDDLE TAB SECTION -->
<div class="container">
	<?php //include 'footer.php';?>
</div>
