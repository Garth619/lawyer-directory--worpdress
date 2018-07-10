<?php get_header(); ?>



<h1><?php echo get_query_var( 'lawfirm_pa');?></h1>


This is a current state:


<?php echo get_query_var( 'currentstate');?>


<?php 
	
	
	$currentpracticearea = get_query_var( 'lawfirm_pa');
	$currentstate = get_query_var( 'currentstate');
	
	
	$query_args = array (
		'post_type' => 'lawfirm',
		'tax_query' => array(
			 array(
			   'taxonomy'  => 'lawfirm_locations',
			    'field'     => 'slug',
			    'terms'     => $currentstate
			),
			array(
			   'taxonomy'  => 'lawfirm_practiceareas',
			    'field'     => 'slug',
			     'terms'     => $currentpracticearea,
			)
		),
	);
	
	
	
	$cityTags = array();
	
	
	$querycity = new WP_Query( $query_args );
			
				if ( $querycity->have_posts() ) {
		 
					while ( $querycity->have_posts() ) {
		 
		        $querycity->the_post();
		        
		        		the_title();
								
								$term_list = wp_get_post_terms($post->ID, 'lawfirm_locations', array("orderby" => "parent", "fields" => "ids"));
		
								$singletaglist = array_unique(array_merge($cityTags,$term_list), SORT_REGULAR);
								
								print_r($singletaglist);
								
								
/*
								echo '<br/>';
								
								echo '<br/>';
								
								
								
								echo '<br/>';
								
								print_r($term_list);
								
								echo '<br/>';
								
								echo '<br/>';
								
								echo '<hr/>';
*/
								
								
						}
					
		 		}
 
		 	
		 	wp_reset_postdata();
	
	
	

/*
	foreach ($singletaglist as $value) {
		 		
		echo '<a href="">' . $value .'</a><br>';
		 		
	}
*/

	
?>
    





<?php get_footer(); ?>
