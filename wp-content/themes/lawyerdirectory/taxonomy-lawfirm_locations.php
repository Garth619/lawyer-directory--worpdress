<?php get_header(); ?>


<h1><?php single_term_title();?></h1>


<?php
	
	$children = get_queried_object()->term_id;
	
	
	$terms = get_terms( array( // change to WP_Term_Query later its faster I think
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
			
				echo "sup";
			
			}

	?>



<?php get_footer(); ?>
