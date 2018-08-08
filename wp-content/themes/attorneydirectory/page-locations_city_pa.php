<?php get_header(); ?>

<div class="section_inner">
	
<div class="breadcrumb">
	
	<a href="<?php bloginfo('url');?>">Home</a> - 
	
	<a href="<?php the_permalink(554156);?>">Practice Areas</a>  - 
	
	<a class="" href="<?php bloginfo('url');?>/lawyers-practice/<?php echo get_query_var( 'office_pa');?>"><?php echo get_query_var( 'office_pa');?></a> - 
	
	<a class="" href="<?php bloginfo('url');?>/lawyers-practice/<?php echo get_query_var( 'office_pa');?>/<?php echo get_query_var( 'currentstate');?>"><?php echo get_query_var( 'currentstate');?></a> - 
	
	<?php echo get_query_var( 'currentcity');?>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->

<h1><?php echo get_query_var( 'office_pa');?></h1>

<br/>
<br/>

<h2><?php echo get_query_var( 'currentcity');?></h2>




<?php 
	
	echo "<br/>";
	
	$currentcity = get_query_var( 'currentcity');
	$currentstate = get_query_var( 'currentstate');
	$currentpracticearea =  get_query_var( 'office_pa');
	
	
	$taxlocations = 'location';
	$taxpracticeareas = 'office_practice_area';
	
	
	
	$query_args = array (
		'post_type' => 'office',
		'fields' => 'ids',
		'posts_per_page' => -1,
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
