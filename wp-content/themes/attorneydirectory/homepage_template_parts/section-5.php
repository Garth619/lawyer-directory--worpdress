<section id="section_five">
	
	<div class="section_inner">
	
		<span class="">query tests</span>
		
<?php $sw_args = array(
		'posts_per_page' => 100,
    'post_type' => 'firm',
    'meta_query' => array(
        array(
            'key' => 'firm_id',
            'value' => array('156','3444')
        )
    )
);?>


<?php $mymain_query = new WP_Query($sw_args); while($mymain_query->have_posts()) : $mymain_query->the_post(); ?>
                	
                    	<h1 class="entry-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
                    
                	</div>
                	<?php endwhile; ?>
                	<?php wp_reset_postdata(); // reset the query ?>





	
	</div>
	
	
</section><!-- section_four -->