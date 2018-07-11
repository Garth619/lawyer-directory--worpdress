<?php get_header(); ?>



<h1><?php echo get_query_var( 'lawfirm_pa');?></h1>

<h2><?php echo get_query_var( 'currentstate');?></h2>

<?php 
	
	global $post;
	
	$currentpracticearea = get_query_var( 'lawfirm_pa');
	$currentstate = get_query_var( 'currentstate');
	
	$taxlocations = 'lawfirm_locations';
	$taxpracticeareas = 'lawfirm_practiceareas';
	
	
	
	
	$query_args = array (
		'post_type' => 'lawfirm',
		'fields' => 'ids',
		'tax_query' => array(
			 array(
			   'taxonomy'  => $taxlocations,
			    'field'     => 'slug',
			    'terms'     => $currentstate,
			),
			array(
			   'taxonomy'  => $taxpracticeareas,
			    'field'     => 'slug',
			     'terms'     => $currentpracticearea,
			)
		),
	);


	$myposts = new Wp_Query( $query_args );


// print_r($myposts->posts);


		$parentid = get_term_by('slug', $currentstate, 'lawfirm_locations');$currentparentid = $parentid->term_id;


		$termargs = array (
			'taxonomy' => $taxlocations,
			//'fields' => 'all_with_object_id',
			'object_ids' => $myposts->posts,
			'orderby' => 'parent',
			'parent' => $currentparentid,
			
		);

		$term_query = new WP_Term_Query( $termargs );

		
		if ( ! empty( $term_query ) && ! is_wp_error( $term_query ) ) {
			foreach ( $term_query ->terms as $term )
			
					echo '<br/><a href="' . get_bloginfo('url') . '/' .  $taxpracticeareas . '/' . $currentpracticearea . '/' . $currentstate . '/'  . $term->slug . '">' . $term->name . '</a>';
			
			}



?>




<?php get_footer(); ?>
