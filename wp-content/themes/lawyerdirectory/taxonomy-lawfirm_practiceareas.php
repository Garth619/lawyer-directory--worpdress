<?php get_header(); ?>

<div class="section_inner">

<h1><?php single_term_title();?></h1>

<h2>Browse by State</h2>


<?php 
	

	$currentterm = get_queried_object()->term_id; 
	
	$taxlocations = 'lawfirm_locations';
	$taxpracticeareas = 'lawfirm_practiceareas';
	
	$query_args = array (
		'post_type' => 'lawfirm',
		'fields' => 'ids',
		'tax_query' => array(
			 array(
			   'taxonomy'  => $taxlocations,
			    'field'     => 'ids',
			    'terms'     => 293, // i gotta narrow this down to the state level somehow
			),
			array(
			   'taxonomy'  => $taxpracticeareas,
			    'field'     => 'ids',
			    'terms'     => $currentterm,
			)
		),
	);
	
	
	
	$myposts = new Wp_Query( $query_args );
	

	$termargs = array (
		'taxonomy' => $taxlocations,
		'object_ids' => $myposts->posts,
		'parent' => 293, // location cat
			
	);
	
	$currenttermslug = get_queried_object()->slug; 

	$term_query = new WP_Term_Query( $termargs );

		
		if ( ! empty( $term_query ) && ! is_wp_error( $term_query ) ) {
			foreach ( $term_query ->terms as $term )
			
					echo '<br/><a href="' . get_bloginfo('url') . '/' .  $taxpracticeareas . '/' . $currenttermslug . '/' . $term->slug . '">' . $term->name . '</a>';
			
			}

?>

</div>


<?php get_footer(); ?>
