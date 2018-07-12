<?php get_header(); ?>


<h1><?php single_term_title();?></h1>


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
		
			
			
			
		
			
			$querycity = new WP_Query( $query_args );
			
				if ( $querycity->have_posts() ) {
		 
					while ( $querycity->have_posts() ) {
		 
		        $querycity->the_post();
								
								$term_list = wp_get_post_terms($post->ID, 'lawfirm_practiceareas', array("fields" => "names"));
		
								$singletaglist = array_unique(array_merge($cityTags,$term_list), SORT_REGULAR);
								
								
								echo "<br/><br/><br/>";
								
								the_title();
								
								echo "<br/>";
								
								print_r($term_list);
								
								
						}
					
		 		}
 
		 	
		 	wp_reset_postdata();


		 	echo "<br/><br/><br/>is this working?<br/><br/>";

		 	foreach ($singletaglist as $value) {
		 		
		 		echo '<a href="' . get_bloginfo('url') . '/?currentcity='. $children . '&currentpracticeareas=' . $value . '">' . $value .'</a><br>';
		 		
		 		// these need to be just the urls. the urls show what the query will be?
			
			}

		 	
		}

	?>



<?php get_footer(); ?>
