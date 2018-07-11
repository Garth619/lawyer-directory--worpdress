<?php get_header(); ?>



<h1><?php echo get_query_var( 'lawfirm_pa');?></h1>


This is a current state:


<?php echo get_query_var( 'currentstate');?>





<!--
<?php 
$terms = get_the_terms(
    get_the_ID(), 
    'lawfirm_locations'
);

if (    $terms
     && !is_wp_error( $terms )
) {
    $term_list = wp_list_pluck( $terms, 'term_id' );

    $args = array (
        'post_type'      => 'lawfirm',
        'tax_query' => array(
            array(
                'taxonomy' => 'lawfirm_practiceareas',
                'terms'    => $term_list,                                       
            ),
        ),                  
    );
    // Run your custom query here
} ?>
-->




<?php 
	
	global $post;
	
	$currentpracticearea = get_query_var( 'lawfirm_pa');
	$currentstate = get_query_var( 'currentstate');
	
	
	$cities = array();
	
	$query_args = array (
		'post_type' => 'lawfirm',
		'tax_query' => array(
			 array(
			   'taxonomy'  => 'lawfirm_locations',
			    'field'     => 'slug',
			    'terms'     => $currentstate
			),
			array(
			   'taxonomy'  => 'lawfirm_practiceareas',
			    'field'     => 'slug',
			     'terms'     => $currentpracticearea,
			)
		),
	);
	
	
	$myposts = get_posts( $query_args );
	foreach ( $myposts as $post ) // (this is to use titles etc)   : setup_postdata( $post );

: ?>
	
	
	
	<?php 
		
		
		
		// $term_list = wp_get_object_terms($post->ID, 'lawfirm_locations', array("orderby" => "parent", "fields" => "names")); 
		
		
		$term_list = get_the_terms($post->ID, 'lawfirm_locations'); 
		
		
		//$singletaglist = array_unique(array_merge($cities,$term_list), SORT_REGULAR); // not working
		
		
		print_r($term_list); 
		
		
		echo "<br/>";
		
		
		// "wordpress merge arrays inside loop https://stackoverflow.com/questions/9334767/multidimensional-array-merge-operation-inside-loop
		
		// https://codex.wordpress.org/Function_Reference/wp_list_pluck
		
		?>
	
	
<?php endforeach; 
wp_reset_postdata();?>


<br/><br/><br/>


what if... I just get the post ids after the tax-query then run the get_the_terms after words.....


wp_list_pluck taxonomy "name" from wp object, then maybe I can merge later

need to possible pluck from this below:

Array ( [0] => WP_Term Object ( 

				[term_id] => 314 
				[name] => California 
				[slug] => california 
				[term_group] => 0 
				[term_taxonomy_id] => 314 
				[taxonomy] => lawfirm_locations 
				[description] => 
				[parent] => 293 
				[count] => 5 
				[filter] => raw ) 
				
				
				[1] => WP_Term Object ( 
				
				[term_id] => 293 
				[name] => Locations 
				[slug] => locations 
				[term_group] => 0 
				[term_taxonomy_id] => 293 
				[taxonomy] => lawfirm_locations 
				[description] => 
				[parent] => 0 
				[count] => 13 
				[filter] => raw ) 
				
				
				[2] => WP_Term Object ( 
				
				[term_id] => 315 
				[name] => Los Angeles 
				[slug] => los-angeles 
				[term_group] => 0 
				[term_taxonomy_id] => 315 
				[taxonomy] => lawfirm_locations 
				[description] => 
				[parent] => 314 
				[count] => 3 
				[filter] => raw ) 
				
			) 



	
	<?php 
		
		

/*
	
	
	$currentpracticearea = get_query_var( 'lawfirm_pa');
	$currentstate = get_query_var( 'currentstate');
	
	
	$cities = array();
	
	$query_args = array (
		'post_type' => 'lawfirm',
		'tax_query' => array(
			 array(
			   'taxonomy'  => 'lawfirm_locations',
			    'field'     => 'slug',
			    'terms'     => $currentstate
			),
			array(
			   'taxonomy'  => 'lawfirm_practiceareas',
			    'field'     => 'slug',
			     'terms'     => $currentpracticearea,
			)
		),
	);
	
	
	
	
	
	$querycity = new WP_Query( $query_args );
			
				if ( $querycity->have_posts() ) {
		 
					while ( $querycity->have_posts() ) {
		 
		        $querycity->the_post();
		        
		        		echo '<br/>';
		        		
		        		echo '<br/>';
								
								$term_list = wp_get_post_terms($post->ID, 'lawfirm_locations', array("orderby" => "parent", "fields" => "names"));
		
								$singletaglist = array_unique(array_merge($cities,$term_list), SORT_REGULAR);
								
								print_r($singletaglist);
								
								echo '<br/>';
								
								echo '<br/>';
								

								
								
						}
					
		 		}
 
		 	
		 	wp_reset_postdata();
*/
	

	
	



/*

	foreach ($singletaglist as $value) {
		 		
		echo '<a href="">' . $value .'</a><br>';
		 		
	}
*/




	
?>
    





<?php get_footer(); ?>
