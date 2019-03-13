
<li class="list_post_item col-sm-6 pw">
	
	
			<?php  $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' );  ?>
			<figure class="thumbnail" style="background:url('<?php echo $image[0]; ?>');"> 
				<a href="<?php the_permalink();?>"></a>
			</figure>	
				
		
	<div class="post_wrapper_content">
		<h2 class="post_title"><a href="<?php echo the_permalink(); ?>"><?php the_title(); ?></a></h2>
	
		<div class="excerpt">
			<p><?php echo excerpt(30); ?></p>
		</div>

	</div>
	<div class="read_more_area">
			<div class="post_meta">
			<!-- <p><?php //the_time('d/m/y');?><span>  <?php //the_time('g:i a') ?> --><!-- </span> --> <!-- | by <a href="<?php //echo get_author_posts_url(get_the_author_meta('ID')) ?>"><?php //the_author(); ?></a> -->
				<!-- | Posted in -->
				<ul>
				<?php 
				$categories = get_the_category();
				$seperator = "";
				$output = '';
				if($categories){
					foreach ($categories as $category){
						$output .= '<li><a href="' . get_category_link($category->term_id) . '"> '. $category-> cat_name . ' </a></li>' .  $seperator;
					}

					echo trim($output , $seperator);
				}
				?>
				</ul>
			<!-- </p> -->
		</div>
		<?php if(is_search() OR is_archive()){?>
			<a class="readmore" href="<?php echo the_permalink(); ?>">Xem thêm <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
		<?php } 
		else {
			if($post->post_excerpt){ ?>
				<a class="readmore" href="<?php echo the_permalink(); ?>">Xem thêm <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
			<?php } else{
				the_content();
			} 
		} ?>
		<div class='status_events'>
			<?php $status_dropdown = get_post_meta($post->ID,'_status_event',true); ?>
				<p> <?php echo $status_dropdown; ?> </p>
				<span><?php echo wpb_get_post_views(get_the_ID()); ?></span>
		</div>
	</div>
	<div class="line_vertical">	</div>

</li>

