<?php get_header(); ?>

<div class="section_inner">

<div class="breadcrumb">
	


	
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->
	
<h1><?php the_title();?></h1>

<br/>
<br/>

<img style="width:200px;" src="<?php bloginfo('template_directory');?>/images/default.jpg"/>

<br/>
<br/>

<?php $officeid = get_field('office_id');?>
	
	<?php $new_argsone = array(
		//'posts_per_page' => 100,
    'post_type' => 'office',
    'meta_query' => array(
        array(
            'key' => 'office_id',
//             'value' => '147432'
            'value' => array($officeid)
        )
    )
);?>


<?php $mymain_queryone = new WP_Query($new_argsone); while($mymain_queryone->have_posts()) : $mymain_queryone->the_post(); ?>
                	
     	
     	Lawfirm: <a href="<?php the_permalink();?>"><?php the_title();?></a>
     	
     	<br/>
     	<br/>
                    	
                  
 <?php endwhile; ?>
<?php wp_reset_postdata(); // reset the query ?>	



<h2>Practice Areas</h2>


<?php $terms = get_the_terms( get_the_ID(), 'practice_area' );
                         
if ( $terms && ! is_wp_error( $terms ) ) : 
 
    
 
    foreach ( $terms as $term ) {
        echo "<br/>" . $term->name;
    }
                         
   
    
    ?>
 
    
<?php endif; ?>

<?php if(get_field('years_licensed_for')):?>

<br/>
<br/>

<h2>Years Licensed For: <?php the_field( 'years_licensed_for' ); ?> </h2>

<?php endif;?>


<?php if(get_field('lawyer_bio')):?>

	<?php the_field( 'lawyer_bio' ); ?>

<?php endif;?>


<?php if(get_field('school_one_name')):?>




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




</div>
	

<?php get_footer(); ?>
