<?php get_header(); ?>


<h1><?php single_term_title();?></h1>


<?php
	
	$children = get_queried_object()->term_id;
	
	$taxlocations = 'lawfirm_locations';
	$taxpracticeareas = 'lawfirm_practiceareas';
	
	
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
	     
	     	echo "Browse By Practice Area<br/></br/>";
	     
	   		$termids = get_terms( array( 
		 			'taxonomy' => $taxpracticeareas,
		 			'fields' => 'ids',
		 			)
		 		);

		 		//print_r($termids);
		 		
		 		
		 		$args = array (
		 			'post_type' => 'lawfirm',
		 			'fields' => 'ids',
		 			'tax_query' => array(

		 			array(
		 				'taxonomy'  => $taxlocations,
		 				'field'     => 'ids',
		 				'terms'     => $children,
		 			),

		 			array(
		 				'taxonomy'  => $taxpracticeareas,
		 				'field'     => 'ids',
		 				'terms'     => $termids,
		 			)
		 		),
		 	); 			


			$postids = new WP_Query( $args );
			

			
			$termargs = array (
				'taxonomy' => $taxpracticeareas,
				//'fields' => 'all_with_object_id',
				'object_ids' => $postids->posts,
				//'parent' => $currentparentid,
			
			);

			$term_query = new WP_Term_Query( $termargs );

		
			if ( ! empty( $term_query ) && ! is_wp_error( $term_query ) ) {
				foreach ( $term_query ->terms as $term )
			
					echo $term->name . "<br/>";
			
				}

			}

	?>



<?php get_footer(); ?>
