<?php get_header(); ?>



<h1><?php echo get_query_var( 'lawfirm_pa');?></h1>


This is a current state:


<?php echo get_query_var( 'currentstate');?>



<?php 
	

	global $post;
	
	
	$currentpracticearea = get_query_var( 'lawfirm_pa');
	$currentstate = get_query_var( 'currentstate');
	
	$query_args = array (
		'post_type' => 'lawfirm',
		'tax_query' => array(
			 array(
			   'taxonomy'  => 'lawfirm_locations',
			    'field'     => 'slug',
			    'terms'     => $currentstate,
			),
			array(
			   'taxonomy'  => 'lawfirm_practiceareas',
			    'field'     => 'slug',
			     'terms'     => $currentpracticearea,
			)
		),
	);



$myposts = get_posts( $query_args );


// echo "<pre>";print_r($myposts);echo "</pre>";
	
/*
	foreach ( $myposts as $post ) : setup_postdata( $post ); 

	echo "<br/>";

the_title();
	
	echo "<br/>";
	
		
	
endforeach; 
wp_reset_postdata();
*/




/*
$terms = get_terms(
    array(
        'taxonomy' => 'lawfirm_practiceareas',
        'object_ids' => array($myposts),
       //'term_taxonomy_id' => 297,
    )
);
*/


//echo "<pre>";print_r($terms);echo "</pre>";


/*
if ( ! empty( $terms ) && ! is_wp_error( $terms ) ){
    echo '<ul>';
    foreach ( $terms as $term ) {
        echo '<li>' . $term->name . '</li>';
    }
    echo '</ul>';
}
*/




		$termargs = array (
			'taxonomy' => 'lawfirm_locations',
			//'fields' => 'all_with_object_id',
			'object_ids' => array(118,108,107, 119),
			'orderby' => 'parent',
			
		);

		$term_query = new WP_Term_Query( $termargs );

		//echo "<pre>";print_r($term_query);echo "</pre>";
		
		
		

		if ( ! empty( $term_query ) && ! is_wp_error( $term_query ) ) {
			foreach ( $term_query ->terms as $term )
        	
        	
        	echo "<br/>" . $term->name;
			
			
			}



?>



















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




<!-- current best one
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
		
		
		
		//$term_list = wp_get_object_terms($post->ID, 'lawfirm_locations', array("orderby" => "parent", "fields" => "names")); 
		
		
		$term_list = get_the_terms($post->ID, 'lawfirm_locations'); 
		
		
		//$singletaglist = array_unique(array_merge($cities,$term_list), SORT_REGULAR); // not working
		
		
		// echo "<pre>"; print_r($term_list); echo "</pre>";

		
		
		// "wordpress merge arrays inside loop https://stackoverflow.com/questions/9334767/multidimensional-array-merge-operation-inside-loop
		
		// https://codex.wordpress.org/Function_Reference/wp_list_pluck
		
		?>
	
	
<?php endforeach; 
wp_reset_postdata();?>


<br/><br/><br/>
-->




	
	<?php 
		
		


		
// echo "<pre>"; print_r($locationterms); echo "</pre>";

?>

<?php /*
	
	
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
    

<?php
	
/*
	
	$taxonomyName = "lawfirm_locations";
//This gets top layer terms only.  This is done by setting parent to 0.  
$parent_terms = get_terms( $taxonomyName, array( 'parent' => 0, 'orderby' => 'slug', 'hide_empty' => false ) );   
echo '<ul>';
foreach ( $parent_terms as $pterm ) {
    //Get the Child terms
    $terms = get_terms( $taxonomyName, array( 'parent' => $pterm->term_id, 'orderby' => 'slug', 'hide_empty' => false ) );
    foreach ( $terms as $term ) {
        echo '<li><a href="' . get_term_link( $term ) . '">' . $term->name . '</a></li>';   
    }
}
echo '</ul>';
*/
	
	 ?>



<?php get_footer(); ?>
