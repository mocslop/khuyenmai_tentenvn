<div class="scrolltop">
	<i class="fa fa-angle-up" aria-hidden="true"></i>	
</div>
<footer class="footer">
	<div class="receive_mail">
		<div class="container">
			
		</div>
	</div>


			<div class="copyright">
				<p>Thiết kế bởi Hoàng Trường Giang</p>
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
