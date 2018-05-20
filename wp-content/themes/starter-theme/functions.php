<?php 


if (function_exists('register_sidebars')) {
    register_sidebar(array(
        'name' => 'Recent Posts',
        'id' => 'sidebar',
        'description' => '',
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget' => '</div>',
        'before_title' => '<h3 class="widgettitle">',
        'after_title' => '</h3>'
    ));
    
    
 }


/* Add Theme Support Page Thumbnails
-------------------------------------------------------------- */

add_theme_support('post-thumbnails');




/* Lawyer Firm CPT 
-------------------------------------------------------------- */


 	
      
   	 
	function lawfirm() {    
    	$args = array(    
        	'label' => __('Lawfirms'),    
        	'singular_label' => __('Lawfirm'),    
        	'public' => true,    
        	'show_ui' => true,
        	// 'taxonomies' => array('lawfirmcat'),
        	'has_archive' => true,	 
        	'capability_type' => 'post',    
        	'hierarchical' => true,    
        	'rewrite' => true,
        	'show_in_rest' => true,    
        	'supports' => array( 'title', 'editor','page-attributes', 'author', 'thumbnail', 'excerpt', 'comments' )    
       	);    
   	 
    	register_post_type( 'lawfirm' , $args );    
	}  
	
	
	add_action('init', 'lawfirm');
	
	  
	register_taxonomy(
		"lawfirmcat", 
		array("lawfirm"),
		array(
			"hierarchical" => true,
			'show_in_rest' => true,
			"label" => "Lawfirm Cats",
			"singular_label" => "Lawfirm Cat",
			'rewrite' => array( 'slug' => 'lawyer' )
		)); 




	add_action('init', 'createlawfirmtags');
	
	
	function createlawfirmtags() {
 
// Labels part for the GUI
 
  $labels = array(
    'name' => _x( 'Practice Area Tags', 'taxonomy general name' ),
    'singular_name' => _x( 'Practice Area Tag', 'taxonomy singular name' ),
    'search_items' =>  __( 'Search Practice Area Tags' ),
    'popular_items' => __( 'Popular Practice Area Tags' ),
    'all_items' => __( 'All Practice Area Tags' ),
    'parent_item' => null,
    'parent_item_colon' => null,
    'edit_item' => __( 'Edit Practice Area Tag' ), 
    'update_item' => __( 'Update Practice Area Tag' ),
    'add_new_item' => __( 'Add New Practice Area Tag' ),
    'new_item_name' => __( 'New Practice Area Tag Name' ),
    'separate_items_with_commas' => __( 'Separate Practice Area Tags with commas' ),
    'add_or_remove_items' => __( 'Add or remove topics' ),
    'choose_from_most_used' => __( 'Choose from the most used Practice Area Tags' ),
    'menu_name' => __( 'Practice Area Tags' ),
  ); 
 
// Now register the non-hierarchical taxonomy like tag
 
  register_taxonomy('lawfirmtags','lawfirm',array(
    'hierarchical' => false,
    'labels' => $labels,
    'show_ui' => true,
    'show_in_rest' => true,
    'show_admin_column' => true,
    'update_count_callback' => '_update_post_term_count',
    'query_var' => true,
    'rewrite' => array( 'slug' => 'practicareas' ),
  ));
}


		