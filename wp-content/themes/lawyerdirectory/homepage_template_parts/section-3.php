<section id="section_three">
	
	<div class="section_inner">
	
		<span class="">Top Cities</span>
		
		<br/>
		<br/>
		
		
		<?php if(get_field('select_top_cities')): ?>
		 
			<?php while(has_sub_field('select_top_cities')): ?>
		 
				<br/>
				
				<?php $select_city_ids = get_sub_field( 'select_city' ); ?>
		
				<?php var_dump( $select_city_ids ); ?>
				
				
				
				<a href="<?php bloginfo('url');?>">City Name</a>
				
		    
			<?php endwhile; ?>
		 
		<?php endif; ?>
		
		<!--  i could get number from above then spit out into get_terms -->
		
		
		<br/>
		<br/>
		
		
		
	
	</div>
	
</section><!-- section_three -->