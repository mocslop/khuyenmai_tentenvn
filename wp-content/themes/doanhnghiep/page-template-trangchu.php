<?php 
/*
Template Name: page-template-trangchu
*/
get_header(); 
?>	
<div class="page-wrapper">
	<div id="content">
		<div class="g_content">
			<div class="tg_slide">
				
			</div>

			<div class="content_left">
				<div class="container">
					<h2 class="title_tg_top">Tin khuyến mãi</h2>
					<div class="row">

						<div class="col-sm-9">
								<?php if(have_posts()) { ?>
									<?php
									$args = array(
										'posts_per_page' => 5,
										'cat' => 3
									);
									$the_query = new WP_Query( $args ); 
									?>
									<ul class="list_post_category">
										<?php	
										while($the_query->have_posts()):  $the_query->the_post(); 
											get_template_part('includes/frontend/loop/loop_post');
										endwhile;

										?>	
										<?php get_template_part('includes/frontend/pagination/pagination'); ?>
									</ul>
								<?php } ?> 
					</div>
					<?php  if(is_active_sidebar('sidebar1')) : ?>
					<div class=" col-sm-3 sidebar">
						<?php dynamic_sidebar('sidebar'); ?> 
					</div>
				<?php endif ?>
				</div>
			</div>


		</div><!-- content_left -->
	</div>

</div>
</div>

<?php get_footer(); ?>
