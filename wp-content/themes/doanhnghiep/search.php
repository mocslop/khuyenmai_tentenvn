<?php 
get_header(); 
?>	
<div id="content">
	<div class="g_content ">
			<div class="container">

		<h2 class="title_header">Kết quả tìm kiếm : <strong><?php the_search_query(); ?></strong></h2>
		<div class="row">
			<div class=" col-sm-9  content_left">
				<?php 
				if(have_posts()): ?>

					<ul class="list_post_search">
						<?php

						while(have_posts()): the_post(); 
							get_template_part('includes/frontend/loop/loop_post');
						endwhile;
						get_template_part('includes/frontend/pagination/pagination');
						?>
					</ul>
					<?php
				else:
					echo '<p class="no_found_content"> Không tìm thấy nội dung bạn vừa nhập</p>';
				endif;
				wp_reset_postdata();
				?>
			</div>
			<div class=" col-sm-3 sidebar">
				<?php dynamic_sidebar('sidebar1'); ?> 
			</div>
		</div>
		
		<!-- Add the pagination functions here. -->
	</div>
	</div>

</div>
<?php get_footer(); ?>
