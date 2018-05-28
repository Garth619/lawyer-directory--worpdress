<section id="section_two">
	
	<div class="section_inner">
		
	<span>Practice Areas</span>
	
	
	<?php 
		
		
	
	$terms = get_terms( array(
    'taxonomy' => 'lawfirm_practiceareas',
	
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




<?php
$term_id = 128;
$taxonomy_name = 'lawfirm_practiceareas';
$term_children = get_term_children( $term_id, $taxonomy_name );

echo '<ul>';
foreach ( $term_children as $child ) {
	$term = get_term_by( 'id', $child, $taxonomy_name );
	echo '<li><a href="' . get_term_link( $child, $taxonomy_name ) . '">' . $term->name . '</a></li>';
}
echo '</ul>';
?> 
	
	

		
		
		
	</div><!-- section_inner -->
	
	
	
	
	
	
	
	
</section><!-- section_two -->