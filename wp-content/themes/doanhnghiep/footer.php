

<div class="receive_mail">
	<div class="container">
		<figure><img src="<?php echo BASE_URL; ?>/images/icon_mail.png"></figure>
		<div class="textwidget">
			<h4>Đăng ký nhận bản tin khuyến mãi từ Tenten</h4>
			<p>Đừng bỏ lỡ hàng ngàn sản phẩm và chương trình siêu hấp dẫn</p>
		</div>
		<div class="regis_mail_ft">
			<input type="email" name="" placeholder="Địa chỉ email của bạn">
			<input type="submit" value="Đăng ký" name="">
		</div>
	</div>
</div>
<footer class="footer">
	<div class="container">
		<h4>TENTEN.VN thuộc Công ty Cổ phần GMO-Z.com RUNSYSTEM - <span>Thành viên của tập đoàn GMO Internet TSE:9449 với thị phần tên miền hàng đầu Nhật Bản</span></h4>
		<div class="row">
			<div class="col-sm-6">
				<ul>
					<li><strong>Trụ sở chính: </strong>Tầng 6, Tòa nhà Ocean Park, Số 01 Đào Duy Anh, phường Phương Mai, Quận Đống Đa, Hà Nội</li>
					<li>024.7108.9999</li>
					<li>Email: info@tenten.vn</li>
				</ul>
			</div>
			<div class="col-sm-6">
				<ul>
					<li><strong>Chi nhánh Hồ Chí Minh: </strong>Lầu 7, tòa nhà Hà Đô, số 2, Đường Hồng Hà, Phường 2, Quận Tân Bình, TP. Hồ Chí Minh</li>
					<li>Tel: (028) 3848.9197</li>
				</ul>
			</div>
		</div>
	</div>
	
</footer>
<div class="scrolltop">
	<i class="fa fa-angle-up" aria-hidden="true"></i>	
</div>
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
