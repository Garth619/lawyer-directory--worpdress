<?php get_header(); ?>


<h1><?php single_term_title();?></h1>


<?php 
	
	$children = get_queried_object()->term_id;
	
	$locationTags = array();
	
	$args = array(
    'post_type' => 'lawfirm',
    
    'tax_query' => array(
        'relation' => 'AND',
        array(
            'taxonomy' => 'lawfirm_practiceareas',
            'field'    => 'term_id',
            'terms'    => $children
            
        ),
    ),
);
$query = new WP_Query( $args );




if ( $query->have_posts() ) {
 
    // Start looping over the query results.
    while ( $query->have_posts() ) {
 
        $query->the_post();
 
        the_title();
        
        echo "<br/>";
        
        
        $term_list = wp_get_post_terms($post->ID, 'lawfirm_locations', array("fields" => "names"));
		
				$singletaglist = array_unique(array_merge($locationTags,$term_list), SORT_REGULAR);
				
				
				print_r($term_list);
				
				
				echo "<br/>";
				echo "<br/>";
 
    }
 
}
 
// Restore original post data.
wp_reset_postdata();


echo "<br/><br/>Results:";

foreach ($singletaglist as $value) {
		 		
		 		echo '<a href="' . get_bloginfo('url') . '/?currentcity='. $children . '&currentpracticeareas=' . $value . '">' . $value .'</a><br>';
			
			}


?>




<?php get_footer(); ?>
