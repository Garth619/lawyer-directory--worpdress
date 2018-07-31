<section id="section_five">
	
	<div class="section_inner">
	
		<span class="">query tests</span>
		
		https://wordpress.stackexchange.com/questions/248295/meta-query-problem
		
		transients are dope -

https://www.doitwithwp.com/using-transients-improve-performance-custom-queries/

https://pressjitsu.com/blog/dont-cache-wp_query/


dynamic transients? https://wordpress.stackexchange.com/questions/213482/transients-with-dynamic-wp-query

https://scotch.io/tutorials/a-guide-to-transients-in-wordpress

http://www.codeforest.net/wordpress-transients-api-caching-benchmarks

https://www.catswhocode.com/blog/wordpress-transients-api-practical-examples
		
<?php $new_args = array(
		'posts_per_page' => 100,
    'post_type' => 'office',
    'meta_query' => array(
        array(
            'key' => 'office_id',
            'value' => array('184448')
        )
    )
);?>


<?php $mymain_querytwo = new WP_Query($new_args); while($mymain_querytwo->have_posts()) : $mymain_querytwo->the_post(); ?>
                	
                    	<h1 class="entry-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
                    
                	</div>
                	<?php endwhile; ?>
                	<?php wp_reset_postdata(); // reset the query ?>		



		
<?php $sw_args = array(
		'posts_per_page' => 100,
    'post_type' => 'lawyer',
    'meta_query' => array(
        array(
            'key' => 'office_id',
            'value' => array('184448')
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