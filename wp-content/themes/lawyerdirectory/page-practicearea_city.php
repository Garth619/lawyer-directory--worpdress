<?php get_header(); ?>


<h1><?php echo $lawfirm_location_currentcity;?></h1>


<?php
	
	// $children = get_queried_object()->term_id;
	
	$taxlocations = 'lawfirm_locations';
	$taxpracticeareas = 'lawfirm_practiceareas';
	
	$lawfirm_location_currentstate = get_query_var( 'lawfirm_location_currentstate');
	$lawfirm_location_currentcity = get_query_var( 'lawfirm_location_currentcity');
    
	     
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
		 				'terms'     => 315, // fix
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
				
					//echo $term;
				
			
					echo '<a href="'. get_bloginfo('url') . "/lawfirm_practiceareas/" .  $term->slug  . '/' . $lawfirm_location_currentstate . '/' . $lawfirm_location_currentcity . '">' . $term->name . '</a><br/>';
			
				}

		

	?>



<?php get_footer(); ?>
