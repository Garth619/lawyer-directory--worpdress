<?php get_header(); ?>

	
<h1><?php the_title();?></h1>

<br/>
<br/>

<p><?php get_template_part( 'loop', 'single' );?></p>

<p>phone: <?php the_field( 'lawfirm_phone' ); ?></p>

<p><?php the_field( 'lawfirm_fax_number' ); ?></p>

<p><a href="<?php the_field( 'lawfirm_website_url' ); ?>" target="_blank"><?php the_title();?></a></p>

<h2>Attorneys</h2>

<?php if(get_field('attorneys')): ?>
 
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
		 
				<h3>Education</h3>
				
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
