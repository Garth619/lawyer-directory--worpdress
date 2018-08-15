<?php get_header(); ?>


<?php 
	
	$currentpracticearea = get_query_var( 'office_pa');
	$currentstate = get_query_var( 'currentstate');
	
	$taxlocations = 'location';
	$taxpracticeareas = 'office_practice_area';
	
	// pa url query -> pa id conversion
	
	$patermslug = get_term_by('slug', $currentpracticearea, $taxpracticeareas);
	
	$patermsid = $patermslug->term_taxonomy_id;
	
	//echo $patermsid;
	
	// state url query -> state id conversion
	
	$statetermslug = get_term_by('slug', $currentstate, $taxlocations);
	
	$statetermid = $statetermslug->term_taxonomy_id;
	
	// echo $statetermid;
	
?>



<div class="section_inner">
	
<div class="breadcrumb">
	
	<a href="<?php bloginfo('url');?>">Home</a>
	
	<a href="<?php the_permalink(554156);?>">Practice Areas</a>
	
	<a href="<?php bloginfo('url');?>/lawyers-practice/<?php echo $currentpracticearea;?>"><?php echo $currentpracticearea;?></a>
	
	<a><?php echo $currentstate;?></a>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->

<h1><?php echo $currentstate;?> <?php echo $currentpracticearea;?> Lawyers</h1>

do this one still



<?php if(get_field('pa_location_content_blocks','option')) {
		 		 
		 	echo "<br/><br/>";
		 			 
		 	while(has_sub_field('pa_location_content_blocks','option')) {
			 			 
			 	if(get_sub_field('current_taxonomy') == $patermsid && (get_sub_field('current_location_taxonomy_state') == $statetermid) && empty(get_sub_field('current_location_taxonomy_city')) ) {
			 			 
			 		the_sub_field('block');
		 			 		
		 		}
		 			 	
		 	}
			
			if(is_user_logged_in()) {
	
		 			echo '<a href="' . get_bloginfo('url') .  '/wp-admin/admin.php?page=content-blocks-settings">Edit</a><br/><br/><br/>';
			 		
				}
		 		 
		}	?>


<br></br>Browse by City

<?php
	
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
