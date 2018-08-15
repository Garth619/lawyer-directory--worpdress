<?php get_header(); ?>

<div class="section_inner">
	
<div class="breadcrumb">
	
	<a href="<?php bloginfo('url');?>">Home</a>
	
	<a href="<?php the_permalink(554156);?>">Practice Areas</a> 
	
	<a class="" href="<?php bloginfo('url');?>/lawyers-practice/<?php echo get_query_var( 'office_pa');?>"><?php echo get_query_var( 'office_pa');?></a>
	
	<a class="" href="<?php bloginfo('url');?>/lawyers-practice/<?php echo get_query_var( 'office_pa');?>/<?php echo get_query_var( 'currentstate');?>"><?php echo get_query_var( 'currentstate');?></a>
	
	<a><?php echo get_query_var( 'currentcity');?></a>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->

<h1><?php echo get_query_var( 'currentcity');?> <?php echo get_query_var( 'office_pa');?> Lawyers</h1>

<div class="content">



</div>

<br/>
<br/>

<!-- and this one -->

Browse by Lawfirm

<?php 
	
	
	
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
	
	echo "<ul>";
	
	$singlefirms = new WP_Query($query_args);
	
	
	
	while($singlefirms->have_posts()) : $singlefirms->the_post();?>
	
	
	<li>
	
	<a href="<?php the_permalink();?>"><?php the_title(); ?></a>
	
	</li>
  
  
  <?php endwhile;
	  
	  
  wp_reset_postdata();
  
  echo "</ul>";
  
  if(is_user_logged_in()) {
	
					echo '<a href="' . get_bloginfo('url') .  '/wp-admin/edit.php?post_type=office">Edit</a><br/><br/><br/>';
			 		
				}

	
	?>

</div>



<?php get_footer(); ?>
