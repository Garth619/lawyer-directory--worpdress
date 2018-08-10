<?php get_header(); ?>


<div class="section_inner">
	

	
	<div class="breadcrumb">
	
	<a href="<?php bloginfo('url');?>">Home</a>
	
	<a href="<?php the_permalink(554158);?>">Locations</a>
	
	<a href="<?php bloginfo('url');?>/lawyers-location/locations/<?php echo get_query_var( 'office_location_currentstate');?>"><?php echo get_query_var( 'office_location_currentstate');?></a>
	
	<a><?php echo get_query_var( 'office_location_currentcity');?></a>
	
	
	
	<br/>
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->
	
<?php
	
	$taxlocations = 'location';
	$taxpracticeareas = 'office_practice_area';
	
	$lawfirm_location_currentstate = get_query_var( 'office_location_currentstate');
	$lawfirm_location_currentcity = get_query_var( 'office_location_currentcity');
	
	
	echo '<h1>' . $lawfirm_location_currentcity . '</h1>';
    
	     
	   echo "<br/>Browse By Practice Area<br/></br/>";
	     
	   		$termids = get_terms( array( 
		 			'taxonomy' => $taxpracticeareas,
		 			'fields' => 'ids',
		 			)
		 		);

		 		//print_r($termids);
		 		
		 		
		 		$currenttermid = get_term_by('slug', $lawfirm_location_currentcity, 'location');
		 		
		 		
		 		$termcityid = $currenttermid->term_id;
		 		
		 		
		 		$args = array (
		 			'post_type' => 'office',
		 			'fields' => 'ids',
		 			'tax_query' => array(

		 			array(
		 				'taxonomy'  => $taxlocations,
		 				'field'     => 'ids',
		 				'terms'     => $termcityid,
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
				
				echo "<ul>";
				
				foreach ( $term_query ->terms as $term )
				
			
					echo '<li><a href="'. get_bloginfo('url') . "/lawyers-practice/" .  $term->slug  . '/' . $lawfirm_location_currentstate . '/' . $lawfirm_location_currentcity . '">' . $term->name . '</a></li>';
			
				}
				
				echo "</ul>";

		

	?>
	
</div>



<?php get_footer(); ?>
