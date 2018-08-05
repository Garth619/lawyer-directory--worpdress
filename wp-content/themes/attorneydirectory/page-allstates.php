<?php 
	
	/* Template Name: All States */
	
	get_header(); ?>


<div class="section_inner">
	
	<h1>States</h1>
	
	<?php 
		
	$state_terms = get_terms( array( // change new WP_Term_Query later, its newer and faster i think
    'taxonomy' => 'location',
    'parent'  => 1048
	
	) );
		
		if ( ! empty( $state_terms ) && ! is_wp_error( $state_terms ) ) {
     echo '<ul>';
     foreach ( $state_terms as $state_term ) {
	     
	      $stateterm_link = get_term_link( $state_term );
	     
       echo '<li><a href="' . esc_url( $stateterm_link ) . '">' . $state_term->name . '</a></li>';
        
     }
     echo '</ul>';
 }
		
	?>


</div>


<?php get_footer(); ?>
