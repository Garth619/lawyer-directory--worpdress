<?php get_header(); ?>


<h1><?php single_term_title();?></h1>


<!-- this is interesting https://wordpress.stackexchange.com/questions/220163/is-there-a-way-of-increasing-the-speed-of-this-query -->

<!-- https://deliciousbrains.com/finding-bottlenecks-wordpress-code/ -->

<!-- https://wordpress.stackexchange.com/questions/216681/how-to-handle-the-terms-inside-loop -->

<!-- https://wordpress.stackexchange.com/questions/138264/including-all-terms-in-wordpress-tax-query good stuff -->

<!-- i feel ike i should be doing a tax_query then feeding that array into a get_terms($args) that displays heirarchial terms at just the parent level -->

<!-- foreach loop then wp-query the terms inside or visa versa? -->


<!-- this is good one, i could proba use this on other tax file -->

<!-- https://codex.wordpress.org/Function_Reference/wp_list_pluck or maybe i can still spit out the array and call just the parent ategory from the default object -->

<!--
<ul>
    <?php $hiterms = get_terms("lawfirm_locations", array("orderby" => "slug", "parent" => 0)); ?>
    <?php foreach($hiterms as $key => $hiterm) : ?>
        <li>
            <?php echo $hiterm->name; ?>
            <?php $loterms = get_terms("lawfirm_locations", array("orderby" => "slug", "parent" => $hiterm->term_id)); ?>
            <?php if($loterms) : ?>
                <ul>
                    <?php foreach($loterms as $key => $loterm) : ?>
                        <li><?php echo $loterm->name; ?></li>
                    <?php endforeach; ?>
                </ul>
            <?php endif; ?>
        </li>
    <?php endforeach; ?>
</ul>
-->

<!-- https://www.engagewp.com/nested-loops-custom-wordpress-queries/  this gets terms with foreach then wpqueries each instance, interesting -->


<?php 
	
	$children = get_queried_object()->term_id;

	
	// $terms = get_terms( 'lawfirm_locations' );
	
	// $term_ids = wp_list_pluck( $terms, 'term_id' ); this is tight
	
	$args = array ('tax_query' => array(
/*
    array(
        'taxonomy' => 'lawfirm_locations',
        'field' => 'term_id',
        'terms' => $term_ids
    ),
*/
     array(
            'taxonomy' => 'lawfirm_practiceareas',
            'field'    => 'term_id',
            'terms'    => $children
            // i could maybe add parents and child of here to narrow down and make query quicker ?
        )
	)
);

$city_posts = new WP_Query( $args );

$cityTags = array();


if ( $city_posts->have_posts() ) {
		 
					while ( $city_posts->have_posts() ) {
		 
		        $city_posts->the_post();

								// the_title();
								
							
								$term_list = wp_get_post_terms($post->ID, 'lawfirm_locations', array("orderby" => "parent","fields" => "names"));
								
								$singletaglist = array_unique(array_merge($cityTags,$term_list), SORT_REGULAR);
								
								// I think wp_get_post_terms is heavy on the db, maybe use get_the_terms or get_object_term_cache()
								
								// if i cant get to work then maybe pluck exisiting data (lookup query usage) and run my own loop of array data
								
								print_r($term_list); // this works
								
								//print_r($term_list); 
								
								echo "<br/>";

								
						}
					
		 		}
 
		 	
		 	wp_reset_postdata();




?>

<!-- this is a good set up when working with arrays -->

<?php 
	
$terms = get_terms("lawfirm_locations");
$count = count($terms);
if ( $count > 0 ){
    foreach ( $terms as $term ) {
      $trailLocationList[] = $term->slug;
    }
}


$args = array(
    'posts_per_page' => -1,
    'post_type' => 'lawfirm',
    'orderby' => 'name',
    'order' => 'ASC',
    'tax_query' => array(
        'relation' => 'AND',
        array(
            'taxonomy' => 'lawfirm_locations',
            'field' => 'slug',
            'terms' => $trailLocationList
        ),
        array(
            'taxonomy' => 'bloom_time',
            'field' => 'slug',
            'terms' => array($bloomTime),
        )
    )
);
$loop = new WP_Query( $args );

?>



<!--
<?php 
	
	 // google get_terms for heirachry just parents

						// https://wordpress.stackexchange.com/questions/14652/how-to-show-a-hierarchical-terms-list
	
						// https://codex.wordpress.org/Function_Reference/wp_terms_checklist
		        
		        // put all this inside the loop, its nice but I dont need the links i think a foreach will work better here where I can customize it better is it ok to run fireach inside loop or is that too many queries to datbase
		        
		        $taxonomy = 'lawfirm_locations';
 
						// Get the term IDs assigned to post.
						$post_terms = wp_get_object_terms( $post->ID, $taxonomy, array( 'fields' => 'ids' ) );
 
						// Separator between links.
						$separator = ', ';
 
						if ( ! empty( $post_terms ) && ! is_wp_error( $post_terms ) ) {
 
						$term_ids = implode( ',' , $post_terms );
 
						$terms = wp_list_categories( array(
							'title_li' => '',
							'style'    => 'none',
							'echo'     => false,
							'taxonomy' => $taxonomy,
							'include'  => $term_ids
						) );
 
						$terms = rtrim( trim( str_replace( '<br />',  $separator, $terms ) ), $separator );
 
						// Display post categories.
						
						the_title();
						echo "<br/>";
						echo  $terms;
						echo "<br/>";
} ?>
-->


<?php get_footer(); ?>
