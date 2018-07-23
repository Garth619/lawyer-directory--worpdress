<section id="section_two">
	
	<div class="section_inner">
		
	<span>Practice Areas</span>
	
	
	<?php 
		
		
	
	$terms = get_terms( array(
    'taxonomy' => 'practice_area',
	
	) );
		
		if ( ! empty( $terms ) && ! is_wp_error( $terms ) ){
     echo '<ul>';
     foreach ( $terms as $term ) {
	     
	      $term_link = get_term_link( $term );
	     
       echo '<li><a href="'. esc_url( $term_link ) . '">' . $term->name . '</a></li>';
        
     }
     echo '</ul>';
 }
		
	?>



	</div><!-- section_inner -->

	
</section><!-- section_two -->