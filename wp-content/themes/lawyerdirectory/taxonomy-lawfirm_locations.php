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
    
     // currently using a rewrite rule for this and a page template page-practicearea_city so I can pull the query_vars out of the url and link my terms to the other urls
/*
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

			
			while($postids->have_posts()) : $postids->the_post(); 
			
			
			the_title();
			
			echo "<br/><br/><br/>";
                	
      
      endwhile; 
      wp_reset_postdata();

			
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
				
			
					echo '<a href="'. get_bloginfo('url') . "/lawfirm_practiceareas/" .  $term->slug  . '/' . $currentstate . '">' . $term->name . '</a><br/>';
			
				}

			}
*/

	?>



<?php get_footer(); ?>
