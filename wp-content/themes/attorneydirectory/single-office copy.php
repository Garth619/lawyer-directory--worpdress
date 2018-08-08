<?php get_header(); ?>

<div class="section_inner">

<div class="breadcrumb">
	
	
<a href="<?php bloginfo('url');?>">Home</a> - 
	
	<a href="<?php the_permalink(554158);?>">Locations</a>  - 
	
	<a class="" href="">State</a> - 
	
	<a class="" href="">City</a>

	
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->
	
<h1><?php the_title();?></h1>

<br/>
<br/>

<?php the_field( 'lawfirm_or_office_bio' ); ?>

<br/>

<?php if(get_field('office_phone')):?>

<p>Lawfirm Phone: <a href="tel:<?php the_field( 'office_phone' ); ?>"><?php the_field( 'office_phone' ); ?></a></p>

<?php endif;?>

<br/>

<?php if(get_field('office_address')):?>

<p><?php the_field( 'office_address' ); ?></p>



^  (note if acf has link use that, otherwise try to automatically generate into google maps link
<!--
https://www.google.com/maps/search/?api=1&query=1200%20Pennsylvania%20Ave%20SE%2C%20Washington%2C%20District%20of%20Columbia%2C%2020003
-->

<br/>
<br/>


<!--
<?php $post_slug = get_post_field( 'post_name', get_post() ); 
	
	 $new_argsone = array(
		'post_type' => 'firm',
    'name' => $post_slug
		);
		
		
	 $mymain_queryone = new WP_Query($new_argsone); while($mymain_queryone->have_posts()) : $mymain_queryone->the_post();
	 
	
	 if(get_field('website_link')):?>
     	
     <a href="<?php the_field( 'website_link' ); ?>" target="_blank">Visit Site</a>
     		
     <br/>
     <br/>
     	
     	<?php endif;

                    	
                  
 endwhile; 
 wp_reset_postdata(); // reset the query ?>	
-->



<h2><?php the_field( 'lawfirm_parent_name' ); ?>'s Practice Areas in <?php the_field( 'office_city' ); ?></h2>

<?php $terms = get_the_terms( get_the_ID(), 'office_practice_area' );
	

                         
if ( $terms && ! is_wp_error( $terms ) ) { 
 
   foreach ( $terms as $term ) {
        echo $term->name . "<br/><br/>";
    }
 
 } ?>



<?php endif;?>

<!-- this needs to call the firm id parent acf website -->

<?php if(get_sub_field('lawfirm_website_urls')):?>

	<p>Visit Website:<a href="<?php the_field( 'lawfirm_website_url' ); ?>" target="_blank"> <?php the_title();?></a></p>

<?php endif;?>

<br/>
<br/>

(maybe other lawfirm locations with links, with their pas? one big firm list or under each locations?)

<br/>
<br/>
<br/>

<hr/>

<br/>
<br/>

<!-- attorneys -->

<h2><?php the_field( 'lawfirm_parent_name' ); ?>'s Attorneys in <?php the_field( 'office_city' ); ?></h2>




<?php 
	
	$term_names = wp_list_pluck( $terms, 'name' );
	
	// print_r($term_names);
	
	$lawyer_args = array (
		'post_type' => 'lawyer',
		'fields' => 'ids',
		'posts_per_page' => -1,
		'tax_query' => array(
			 array(
			   'taxonomy'  => 'practice_area',
			    'field'     => 'slug',
			    'terms'     => $term_names
			)
		),
	);


	$lawyerposts = new Wp_Query( $lawyer_args ); 
	
/*
	while($lawyerposts->have_posts()) : $lawyerposts->the_post(); ?>
	
	<br/>
	
	<?php the_title();?>,
	
	
  
  <?php endwhile; ?>
  <?php wp_reset_postdata(); // reset the query ?>
*/



	
 if ( $terms && ! is_wp_error( $terms ) ) { 
 
   foreach ( $terms as $term ) {
        echo $term->name . "<br/>";
    }
 
 } ?>

	
	<?php $officeid = get_field('office_id');?>
	
	<?php $new_args = array(
    'post_type' => 'lawyer',
    'posts_per_page' => -1,
//     'post__in' => ,
    'meta_query' => array(
        array(
           'key' => 'office_id',
           'value' => array($officeid)
        )
			)
); ?>


<?php $mymain_querytwo = new WP_Query($new_args); while($mymain_querytwo->have_posts()) : $mymain_querytwo->the_post(); ?>
                	
     <h2 class="entry-title"><a href="<?php the_permalink();?>"><?php the_title(); ?></a></h2>
     
		 <br/>

		 <img style="width:200px;" src="<?php bloginfo('template_directory');?>/images/default.jpg"/>

		 <br/>
		 <br/>

		 <h2><?php the_title(); ?>'s Practice Areas</h2>


<?php $terms = get_the_terms( get_the_ID(), 'practice_area' );
                         
if ( $terms && ! is_wp_error( $terms ) ) : 
 
    
 
    foreach ( $terms as $term ) {
        echo "<br/>" . $term->name;
    }
                         
   
    
    ?>
 
    
<?php endif; ?>  

<?php if(get_field('lawyer_bio')):?>

	<?php the_field( 'lawyer_bio' ); ?>

<?php endif;?>


<?php if(get_field('school_one_name')):?>


<br/>
<br/>

	<h2>Education</h2>

	<p>School: <?php the_field( 'school_one_name' ); ?></p>
	
	<?php if(get_field('schoo_one_degree')):?>

		<p>Degree: <?php the_field( 'schoo_one_degree' ); ?></p>

	<?php endif;?>
	
	<?php if(get_field('school_one_year_graduated')):?>

		<p>Year Graduated: <?php the_field( 'school_one_year_graduated' ); ?></p>

	<?php endif;?>
		

<?php endif;?>




<?php if(get_field('school_two_name')):?>

	<br/>
	

	<p>School: <?php the_field( 'school_two_name' ); ?></p>
	
	<?php if(get_field('school_two_degree')):?>

		<p>Degree: <?php the_field( 'school_two_degree' ); ?></p>

	<?php endif;?>
	
	<?php if(get_field('school_two_year_graduated')):?>

		<p>Year Graduated: <?php the_field( 'school_two_year_graduated' ); ?></p>

	<?php endif;?>
		

<?php endif;?>


             	
                    	
                  
 <?php endwhile; ?>
<?php wp_reset_postdata(); // reset the query ?>	






</div><!-- secton inner -->



	

<?php get_footer(); ?>
