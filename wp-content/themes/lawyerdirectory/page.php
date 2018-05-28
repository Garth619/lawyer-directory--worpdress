<?php get_header(); ?>



<?php get_template_part( 'loop', 'index' );?>

<?php //use get_template_part( 'loop', 'page' ) if needed ?>




<?php get_sidebar(); ?>

<?php 
	
	$state = 124;
	$stateTags = array();

	
	$query_args = array (
    'post_type' => 'lawfirm',
    'tax_query' => array(
        array(
          'taxonomy'  => 'lawfirm_locations',
           'field'     => 'term_id',
           'terms'     => $state,
				)
			),
		);
		
	print_r($state);
	
	$querystate = new WP_Query( $query_args );
	
		if ( $querystate->have_posts() ) {
 
			while ( $querystate->have_posts() ) {
 
        $querystate->the_post();
        
        	if( has_term('', 'lawfirm_practiceareas') ){
        
						$term_list = wp_get_post_terms($post->ID, 'lawfirm_practiceareas', array("fields" => "ids"));

						$workbitch = array_unique(array_merge($stateTags,$term_list), SORT_REGULAR);
						
						print_r($workbitch);
				
				}
			}
 		}
 
wp_reset_postdata(); ?>

<?php // echo $state;?>

<?php //print_r($workbitch);?>



<?php // http://www.joshstauffer.com/wordpress-get-tags-for-a-specific-category/
$custom_query = new WP_Query( 'posts_per_page=-1&category_name=cat-1' );
if ( $custom_query->have_posts() ) :
	while ( $custom_query->have_posts() ) : $custom_query->the_post();
		$posttags = get_the_tags();
		if ( $posttags ) {
			foreach( $posttags as $tag ) {
				$all_tags[] = $tag->term_id;
			}
		}
	endwhile;
endif;

$tags_arr = array_unique( $all_tags );
$tags_str = implode( ",", $tags_arr );

$args = array(
	'smallest'  => 12,
	'largest'   => 12,
	'unit'      => 'px',
	'number'    => 0,
	'format'    => 'list',
	'include'   => $tags_str
);
wp_tag_cloud( $args );
?>




<?php $args = array(
    'post_type' => 'lawfirm',
    
    'tax_query' => array(
        'relation' => 'AND',
        array(
            'taxonomy' => 'lawfirm_locations',
            'field'    => 'term_id',
            'terms'    => array( '112' ),
        ),
        array(
            'taxonomy' => 'lawfirm_practiceareas',
            'field'    => 'term_id',
            'terms'    => array( '80' ),
        ),
    ),
);
$query = new WP_Query( $args );




if ( $query->have_posts() ) {
 
    // Start looping over the query results.
    while ( $query->have_posts() ) {
 
        $query->the_post();
 
        the_title(); get_the_ID();
 
    }
 
}
 
// Restore original post data.
wp_reset_postdata();




?>

<?php 

 
$args = array(
  'taxonomy'     => 'lawfirm_locations',
  'orderby'      => 'name',
  'show_count'   => false,
  'pad_counts'   => false,
  'hierarchical' => true,
  'title_li'     => '',
);
?>
 
<ul>
    <?php wp_list_categories( $args ); ?>
</ul>



<?php 

 
$argstwo = array(
  'taxonomy'     => 'lawfirm_practiceareas',
  'orderby'      => 'name',
  'show_count'   => false,
  'pad_counts'   => false,
  'hierarchical' => false,
  'title_li'     => '',
);
?>
 
<ul>
    <?php wp_list_categories( $argstwo ); ?>
</ul>



<ul class="products"> 
    <?php wp_list_categories('post_type=lawfirm&taxonomy=lawfirm_locations&orderby=id&show_count=1&use_desc_for_title=0&child_of=113'); ?>
</ul>


<?php 
$taxonomy = 'lawfirm_locations'; //Choose the taxonomy
$terms = get_terms( $taxonomy ); //Get all the terms
 
foreach ($terms as $term) { //Cycle through terms, one at a time
 
// Check and see if the term is a top-level parent. If so, display it.
$parent = $term->parent;
 if ( $parent=='0' ) {
 
	$term_id = $term->term_id; //Define the term ID
	$term_link = get_term_link( $term, $taxonomy ); //Get the link to the archive page for that term
	$term_name = $term->name;
	echo '<a class="ccats" href="' . $term_link . '"><span class="label">' . $term_name . '</span></a>';	
} }
?>


<?php echo get_the_term_list( $post->ID, 'lawfirm_practiceareas', 'People: ', ', ' ); ?>


<?php $postslist = get_posts( array(
    'posts_per_page' => 10,
    'order'          => 'ASC',
    'orderby'        => 'title'
) );
 
if ( $postslist ) {
    foreach ( $postslist as $post ) :
        setup_postdata( $post );
        ?>
        <div>
            <?php the_date(); ?>
            <br />
            <?php the_title(); ?>   
            <?php the_excerpt(); ?>
        </div>
    <?php
    endforeach; 
    wp_reset_postdata();
}?>

garrett



<?php echo help();?>




<?php get_footer(); ?>
