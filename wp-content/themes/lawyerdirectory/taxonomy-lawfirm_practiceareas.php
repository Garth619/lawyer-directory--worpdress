<?php get_header(); ?>


<h1><?php single_term_title();?></h1>




<?php 
	

	$currentterm = get_queried_object()->term_id; 
	
	//print_r($currentterm);

	$taxlocations = 'lawfirm_locations';
	$taxpracticeareas = 'lawfirm_practiceareas';
	
	
	$query_args = array (
		'post_type' => 'lawfirm',
		'fields' => 'ids',
		'tax_query' => array(
			 array(
			   'taxonomy'  => $taxlocations,
			    'field'     => 'slug',
			    'terms'     => $currentterm,
			),
				array(
			   'taxonomy'  => $taxpracticeareas,
			    'field'     => 'slug',
			     'terms'     => $currentterm,
				)
		),
	);
	
	// does running two tax queries slow it doewn? should I just run in locations?
	
	$myposts = new Wp_Query( $query_args );
	
	
	
	
	?>

	


<?php get_footer(); ?>
