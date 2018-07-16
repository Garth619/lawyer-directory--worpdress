<?php get_header(); ?>

<div class="breadcrumb" style="display:none;">
	
	
	<a href="<?php bloginfo('url');?>">Home</a> -> <a href="<?php bloginfo('url');?>/lawfirm_locations/locations">Locations</a> -> <a href="">California</a> -> <a href="">Los Angeles</a>
	

	
	<br/>
	<br/>
	<br/>
	
</div><!-- breadcrumb -->
	
<h1><?php the_title();?></h1>

<br/>
<br/>

<p><?php get_template_part( 'loop', 'single' );?></p>

<p>phone: <?php the_field( 'lawfirm_phone' ); ?></p>

<p><?php the_field( 'lawfirm_fax_number' ); ?></p>

<br/>

<?php if(get_sub_field('lawfirm_website_urls')):?>

	<p>Visit Website:<a href="<?php the_field( 'lawfirm_website_url' ); ?>" target="_blank"> <?php the_title();?></a></p>

<?php endif;?>

<br/>
<br/>

<p>Practice Areas</p>

<?php $terms = get_the_terms( get_the_ID(), 'lawfirm_practiceareas' );
                         
if ( $terms && ! is_wp_error( $terms ) ) : 
 
    $pa_links = array();
 
    foreach ( $terms as $term ) {
        $pa_links[] = $term->name;
    }
                         
    $pa_links_commas = join( ", ", $pa_links );
    
    ?>
 
   <?php printf( esc_html__( '%s', 'textdomain' ), esc_html( $pa_links_commas ) ); ?>
  
<?php endif; ?>

<br/>
<br/>



<?php if(get_field('attorneys')): ?>

	<h2>Attorneys</h2>
	
	<br/>
 
	<?php while(has_sub_field('attorneys')): ?>
 
		<p><?php the_sub_field( 'attorney_name' ); ?></p>
		
		<?php if(get_sub_field('attorney_phone')):?>
		
			<p>Phone: <?php the_sub_field( 'attorney_phone' ); ?></p>
		
		<?php endif;?>
		
		<?php if(get_sub_field('attorney_fax_number')):?>
		
			<p>Fax: <?php the_sub_field( 'attorney_fax_number' ); ?></p>
		
		<?php endif;?>
		
		<?php if(get_sub_field('attorney_address')):?>
		
			<p>Address: <?php the_sub_field( 'attorney_address' ); ?></p>
		
		<?php endif;?>
		
		<?php if(get_sub_field('avvo_profile')):?>
		
			<p>Avvo: <?php the_sub_field( 'avvo_profile' ); ?></p>
		
		<?php endif;?>
		
		<?php if(get_sub_field('years_licensed_for')):?>
		
			<p>Years Licensed For: <?php the_sub_field( 'years_licensed_for' ); ?></p>
		
		<?php endif;?>
		
		
		<?php if(get_sub_field('attorney_education')): ?>
		 
			<?php while(has_sub_field('attorney_education')): ?>
		 
				<br/>
				
				<h3>Education</h3>
				
				<br/>
				
				<?php if(get_sub_field('school_name')):?>
				
					<p>School: <?php the_sub_field( 'school_name' ); ?></p>
				
				<?php endif;?>
				
				<?php if(get_sub_field('school_degree')):?>
				
					<p>Degree: <?php the_sub_field( 'school_degree' ); ?></p>
				
				<?php endif;?>
				
				<?php if(get_sub_field('school_year_graduated')):?>
				
					<p>Year Graduated: <?php the_sub_field( 'school_year_graduated' ); ?></p>
				
				<?php endif;?>
		    
			<?php endwhile; ?>
		 
		<?php endif; ?>
		
    
	<?php endwhile; ?>
 
<?php endif; ?>

<?php get_footer(); ?>
