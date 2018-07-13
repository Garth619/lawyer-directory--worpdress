<?php get_header(); ?>

<h1><?php echo get_query_var( 'lawfirm_pa');?></h1>

This is a current city:

<?php echo get_query_var( 'currentcity');?>


<?php 
	
	echo "<br/>";
	
	$currentcity = get_query_var( 'currentcity');
	$currentpracticearea =  get_query_var( 'lawfirm_pa');
	
	
	$taxlocations = 'lawfirm_locations';
	$taxpracticeareas = 'lawfirm_practiceareas';
	
	
	
	$query_args = array (
		'post_type' => 'lawfirm',
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














<?php get_footer(); ?>
