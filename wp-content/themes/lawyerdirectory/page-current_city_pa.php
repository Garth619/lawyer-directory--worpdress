<?php get_header(); ?>

<h1><?php echo get_query_var( 'lawfirm_pa');?></h1>

This is a current city:

<?php echo get_query_var( 'currentcity');?>


<?php 
	
	$query_args = array (
		'post_type' => 'lawfirm',
		'tax_query' => array(
			 array(
			   'taxonomy'  => 'lawfirm_locations',
			    'field'     => 'slug',
			    'terms'     => 'california',
			),
			array(
			   'taxonomy'  => 'lawfirm_practiceareas',
			    'field'     => 'slug',
			     'terms'     => 'arbitration',
			)
		),
	);
				
?>






<?php get_footer(); ?>
