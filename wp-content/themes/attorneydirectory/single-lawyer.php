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

<img style="width:200px;" src="<?php bloginfo('template_directory');?>/images/default.jpg"/>

<br/>
<br/>

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
