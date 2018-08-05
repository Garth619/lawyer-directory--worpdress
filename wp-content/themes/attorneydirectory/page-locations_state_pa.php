<?php get_header(); ?>

<div class="section_inner">
	

<h1><?php echo get_query_var( 'lawfirm_pa');?></h1>

<h2><?php echo get_query_var( 'currentstate');?></h2>

<?php 
	
	$currentpracticearea = get_query_var( 'office_pa');
	$currentstate = get_query_var( 'currentstate');
	
	$taxlocations = 'location';
	$taxpracticeareas = 'office_practice_area';
	
	
	$query_args = array (
		'post_type' => 'office',
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


		$parentid = get_term_by('slug', $currentstate, 'location');$currentparentid = $parentid->term_id;


		$termargs = array (
			'taxonomy' => $taxlocations,
			//'fields' => 'all_with_object_id',
			'object_ids' => $myposts->posts,
			'parent' => $currentparentid,
			
		);

		$term_query = new WP_Term_Query( $termargs );

		
		if ( ! empty( $term_query ) && ! is_wp_error( $term_query ) ) {
			
			echo "<ul>";
			
			foreach ( $term_query ->terms as $term )
			
					echo '<li><a href="' . get_bloginfo('url') . '/lawyers-practice/' . $currentpracticearea . '/' . $currentstate . '/'  . $term->slug . '">' . $term->name . '</a></li>';
			
			}
			
			echo "</ul>";



?>

</div>


<?php get_footer(); ?>
