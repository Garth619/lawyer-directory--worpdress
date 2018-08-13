<?php get_header(); ?>

<div class="section_inner">
	
	<div class="breadcrumb">
	
	<a href="<?php bloginfo('url');?>">Home</a> 
	
	<a href="<?php the_permalink(554158);?>">Locations</a>
	
	<a><?php single_term_title();?></a>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->

<h1><?php single_term_title();?></h1>

	
<?php	$children = get_queried_object()->term_id;
	
	
	if(get_field('content_blocks','option')) {
		 		 
		 echo "<br/><br/>";
		 			 
		 	while(has_sub_field('content_blocks','option')) {
			 			 
			 if(get_sub_field('current_taxomony') == $children)
			 			 
			 		the_sub_field('block');
		 			 		
		 		}
		 		 
		}	


	echo "Browse By City";

	
	
	
	
	
	$taxlocations = 'location';
	$taxpracticeareas = 'office_practice_area';
	
	$terms = get_terms( array( // change to WP_Term_Query later its faster I think
    'taxonomy' => 'location',
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
    
    
	?>
	
	</div><!-- section_inner -->



<?php get_footer(); ?>
