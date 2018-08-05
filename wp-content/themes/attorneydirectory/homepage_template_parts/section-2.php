<section id="section_two">
	
	<div class="section_inner">
		
	<span>Practice Areas</span>
	
	
	<?php $top_practice_areas_terms = get_field( 'top_practice_areas' );
	
		if ( $top_practice_areas_terms ) {
				
			echo "<ul>";
		
			foreach ( $top_practice_areas_terms as $top_practice_areas_term ) { ?>
			
			
		
				<li><?php echo $top_practice_areas_term->name;?></li>
			
			<?php }
				
			echo "</ul>";

		} ?>
		
		<a class="see_all_pa" href="">Don't see what your looking for? See All Practice Areas</a><!-- see_all_pa -->
	
	
<!--
	<?php 
		
		
	
	$terms = get_terms( array(
    'taxonomy' => 'office_practice_area',
	
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
-->



	</div><!-- section_inner -->

	
</section><!-- section_two -->