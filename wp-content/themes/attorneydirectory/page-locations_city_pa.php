<?php get_header(); ?>

<div class="section_inner">

<h1><?php echo get_query_var( 'currentcity');?></h1>

<h2><?php echo get_query_var( 'office_pa');?></h2>


<?php 
	
	echo "<br/>";
	
	$currentcity = get_query_var( 'currentcity');
	$currentpracticearea =  get_query_var( 'office_pa');
	
	
	$taxlocations = 'location';
	$taxpracticeareas = 'office_practice_area';
	
	
	
	$query_args = array (
		'post_type' => 'office',
		'fields' => 'ids',
		'tax_query' => array(
			 array(
			   'taxonomy'  => $taxlocations,
			    'field'     => 'slug',
			    'terms'     => $currentcity,
			),
			array(
			   'taxonomy'  => $taxpracticeareas,
			    'field'     => 'slug',
			    'terms'     => $currentpracticearea,
			)
		),
	);
	
	
	
	$singlefirms = new WP_Query($query_args);
	
	
	while($singlefirms->have_posts()) : $singlefirms->the_post();?>
	
	
	<br/>
	
	<a href="<?php the_permalink();?>"><?php the_title(); ?></a>
  
  
  <?php endwhile;
  wp_reset_postdata();

	
	?>

</div>



<?php get_footer(); ?>
