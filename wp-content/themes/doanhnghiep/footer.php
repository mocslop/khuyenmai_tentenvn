<div class="scrolltop">
	<i class="fa fa-angle-up" aria-hidden="true"></i>	
</div>
<footer class="footer">
	<div class="container">
		
			
		
		

			<div class="copyright">
				<p>©2019 VIETNAM MEDI-PHARM EXPO</p>
			</div>
			<div class="popup popup_map">
				<div class="content_popup">
					<div class="wrap_content_p">
						<h2>Bản đồ vị trí hội chợ</h2>
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3920.0402203819053!2d106.7189652141822!3d10.731381362959446!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f884b977323%3A0x12bab2d8a70949ca!2zVHJ1bmcgdMOibSBI4buZaSBjaOG7oyB2w6AgVHJp4buDbiBsw6NtIFPDoGkgR8Oybg!5e0!3m2!1svi!2s!4v1513504420367"  frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
					<div class="close_popup"><i class="fa fa-times" aria-hidden="true"></i></div>
				</div>
			</div>
		</div>
	</footer>
	<?php wp_footer(); ?>
	<!-- MESSENGER -->
	<script>      
		window.fbAsyncInit = function() {
			FB.init({
				appId      : '1953938748210615',
				xfbml      : true,
				version    : 'v2.6'
			});
		};
		(function(d, s, id){
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {return;}
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));      
	</script>
	<!-- END  MESSENGER -->
	<?php get_template_part('order_fixedf'); ?>
	<script src="<?php echo BASE_URL; ?>/js/wow.min.js"></script>
	<script src="<?php echo BASE_URL; ?>/js/slick.js"></script>
	<script src="<?php echo BASE_URL; ?>/js/custom.js"></script>
</body>
</html>
