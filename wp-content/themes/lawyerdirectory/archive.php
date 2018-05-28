<?php get_header(); ?>

		
<?php
	
	// get_template_part( 'loop', 'archive' );
	
?>



<?php
	
	$current = get_queried_object()->term_id;
	
	
	$terms = get_terms( array(
    'taxonomy' => 'lawfirm_locations',
    'parent' => $current,
	
	) );
		
		if ( ! empty( $terms ) && ! is_wp_error( $terms ) ){
     
     echo '<ul>';
     foreach ( $terms as $term ) {
	     
	      $term_link = get_term_link( $term );
	     
       echo '<li><a href="'. esc_url( $term_link ) . '">' . $term->name . '</a></li>';
        
     }
     echo '</ul>';
 
} ?>

<?php if(is_tax( 'lawfirm_locations', 'california' )) {

echo "this is ca";

} ?>


<?php 
	
	
	
?>


<?php // get_sidebar(); ?>
<?php get_footer(); ?>
