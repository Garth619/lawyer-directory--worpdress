<?php get_header(); ?>

		
<?php
	
	//get_template_part( 'loop', 'archive' );
	
?>



<?php
	
	$children = get_queried_object()->term_id;
	
	
	$terms = get_terms( array(
    'taxonomy' => 'lawfirm_locations',
    'parent' => $children,
	
	) );
	
		
	
		if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {
     
     echo '<ul>';
     
     foreach ( $terms as $term ) {
	     
	      $term_link = get_term_link( $term );
	     
				echo '<li><a href="'. esc_url( $term_link ) . '">' . $term->name . '</a></li>';
        
     }
     
     echo '</ul>';
     
     }
    
     
     if( empty($terms)) {
			
			
			$cityTags = array();

	
			$query_args = array (
			  'post_type' => 'lawfirm',
			  'tax_query' => array(
			      array(
			        'taxonomy'  => 'lawfirm_locations',
			         'field'     => 'term_id',
			         'terms'     => $children,
						)
					),
				);
		
			echo $children;
		
			
			
	
			$querycity = new WP_Query( $query_args );
			
				if ( $querycity->have_posts() ) {
		 
					while ( $querycity->have_posts() ) {
		 
		        $querycity->the_post();
		        
		        	if( has_term('', 'lawfirm_practiceareas') ){
			        	
			        	$postid = get_the_ID();
			        	
			        	$what = wp_get_post_terms($post->ID, 'lawfirm_practiceareas', array("fields" => "ids"));
			        	
			        	echo "<br/>";
			        	
			        	print_r($postid);
			        	
			        	echo "<br/>";
			        	
			        	print_r($what);
		        
								 // $term_list = wp_get_post_terms($post->ID, 'lawfirm_practiceareas', array("fields" => "ids"));
		
								 // $singletaglist = array_unique(array_merge($cityTags,$term_list), SORT_REGULAR);
								
						}
					}
		 		}
 
		 	
		 	wp_reset_postdata();
		 	
		 	// $termlistarray = print_r($singletaglist);
		 	
		 	
		 	
				
		}

	?>



<?php get_footer(); ?>
