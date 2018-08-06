<?php get_header(); ?>

<div class="section_inner">
	

<div class="breadcrumb">
	
	<a href="<?php bloginfo('url');?>">Home</a> - 
	
	<a href="<?php the_permalink(554156);?>">Practice Areas</a>  - 
	
	<?php single_term_title();?>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->

	



<h1><?php single_term_title();?></h1>

<h2>Browse by State</h2>


<?php 
	

	$currentterm = get_queried_object()->term_id; 
	
	$taxlocations = 'location';
	$taxpracticeareas = 'office_practice_area';
	
	$query_args = array (
		'post_type' => 'office',
		'fields' => 'ids',
		'tax_query' => array(
			 array(
			   'taxonomy'  => $taxlocations,
			    'field'     => 'ids',
			    'terms'     => 1048, // i gotta narrow this down to the state level somehow
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
		'parent' => 1048, // location cat
			
	);
	
	$currenttermslug = get_queried_object()->slug; 

	$term_query = new WP_Term_Query( $termargs );

		
		if ( ! empty( $term_query ) && ! is_wp_error( $term_query ) ) {
			
			echo "<ul>";
			
			foreach ( $term_query ->terms as $term )
			
					echo '<li><a href="' . get_bloginfo('url') . '/lawyers-practice/' . $currenttermslug . '/' . $term->slug . '">' . $term->name . '</a></li>';
			
			}
			
			echo "</ul>";

?>

</div>


<?php get_footer(); ?>
