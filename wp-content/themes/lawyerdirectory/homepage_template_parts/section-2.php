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
       echo '<li>' . $term->name . '</li>';
        
     }
     echo '</ul>';
 }
		
	?>

	
	
	
	
	
	<ul>
		<li><a href="">Business</a></li>
		<li><a href="">Business</a></li>
		<li><a href="">Business</a></li>
		
	</ul>
		
		
		
	</div><!-- section_inner -->
	
	
	
	
	
	
	
	
</section><!-- section_two -->