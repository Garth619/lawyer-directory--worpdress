<section id="section_three">
	
	<div class="section_inner">
	
		<span class="">Top Cities</span>
		
		<br/>
		<br/>
		
		
		<?php 
			
			if(get_field('top_cities')):
		 
			while(has_sub_field('top_cities')):
		 
				echo "<br/>";
				
				$select_city_ids = get_sub_field( 'select_top_city' );
				
				$select_state = $select_city_ids->parent;
				
				$parentid = get_term_by('id', $select_state, 'location');
				
				$currentparentid = $parentid->slug;
				
				echo '<a href="' . get_bloginfo('url') . '/lawyers-location/locations/' . $currentparentid . '/' . $select_city_ids->slug .  '">' . $select_city_ids->name . '</a>';

				
		    
			endwhile;
		 
		endif;
	
		?>

		<br/>
		<br/>
		
		
		
	
	</div>
	
</section><!-- section_three -->