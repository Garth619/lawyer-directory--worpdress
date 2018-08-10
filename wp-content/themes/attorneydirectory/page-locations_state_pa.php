<?php get_header(); ?>

<div class="section_inner">
	
<div class="breadcrumb">
	
	<a href="<?php bloginfo('url');?>">Home</a>
	
	<a href="<?php the_permalink(554156);?>">Practice Areas</a>
	
	<a href="<?php bloginfo('url');?>/lawyers-practice/<?php echo get_query_var( 'office_pa');?>"><?php echo get_query_var( 'office_pa');?></a>
	
	<a><?php echo get_query_var( 'currentstate');?></a>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->

<h1><?php echo get_query_var( 'currentstate');?> <?php echo get_query_var( 'office_pa');?> Lawyers</h1>

<div class="content">
	
	<?php the_field( 'practice_areas_by_city','option'); ?>
	
</div><!-- content -->

<br></br>Browse by City

<?php 
	
	$currentpracticearea = get_query_var( 'office_pa');
	$currentstate = get_query_var( 'currentstate');
	
	$taxlocations = 'location';
	$taxpracticeareas = 'office_practice_area';
	
	
	$query_args = array (
		'post_type' => 'office',
		'posts_per_page' => -1,
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
			'posts_per_page' => -1,
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
