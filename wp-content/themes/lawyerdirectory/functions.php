<?php 
/* jQuery from Google
-------------------------------------------------------------- */
if (!is_admin()) add_action("wp_enqueue_scripts", "my_jquery_enqueue", 11);
function my_jquery_enqueue() {
   wp_deregister_script('jquery');
   wp_register_script('jquery', "http" . ($_SERVER['SERVER_PORT'] == 443 ? "s" : "") . "://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js", false, null,true);
   wp_enqueue_script('jquery');
}
/* Enqueued Scripts
-------------------------------------------------------------- */
 function load_my_styles_scripts() {
     // Load my stylesheet
     wp_enqueue_style( 'styles', get_template_directory_uri() . '/style.css', '', 1, 'all' ); 
     // Load my javascripts
     wp_enqueue_script( 'jquery-addon', get_template_directory_uri() . '/js/custom-min.js', array('jquery'), '', true );
 }
 
 add_action( 'wp_enqueue_scripts', 'load_my_styles_scripts', 20 );
 
 
 

/* Force Gravity Forms to init scripts in the footer and ensure that the DOM is loaded before scripts are executed
-------------------------------------------------------------- */
add_filter( 'gform_init_scripts_footer', '__return_true' );
add_filter( 'gform_cdata_open', 'wrap_gform_cdata_open', 1 );
function wrap_gform_cdata_open( $content = '' ) {
if ( ( defined('DOING_AJAX') && DOING_AJAX ) || isset( $_POST['gform_ajax'] ) ) {
return $content;
}
$content = 'document.addEventListener( "DOMContentLoaded", function() { ';
return $content;
}
add_filter( 'gform_cdata_close', 'wrap_gform_cdata_close', 99 );
function wrap_gform_cdata_close( $content = '' ) {
if ( ( defined('DOING_AJAX') && DOING_AJAX ) || isset( $_POST['gform_ajax'] ) ) {
return $content;
}
$content = ' }, false );';
return $content;
}
/* Remove Unnecessary Scripts
-------------------------------------------------------------- */
remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('admin_print_scripts', 'print_emoji_detection_script');
remove_action('wp_print_styles', 'print_emoji_styles');
remove_action('admin_print_styles', 'print_emoji_styles');
/* Register Nav-Menus
-------------------------------------------------------------- */
register_nav_menus(array(
    'main_menu' => 'Main Menu',
    
));
/* Widgets
-------------------------------------------------------------- */
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
    
    register_sidebar(array(
        'name' => 'Category',
        'id' => 'category_sidebar',
        'description' => '',
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget' => '</div>',
        'before_title' => '<h3 class="widgettitle">',
        'after_title' => '</h3>'
    ));
    
    register_sidebar(array(
        'name' => 'Archive',
        'id' => 'archive_sidebar',
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
/* Modify the_excerpt() " read more "
-------------------------------------------------------------- */
function new_excerpt_more($more)
{
    global $post;
    return '... <a href="' . get_permalink($post->ID) . '">' . 'read more' . '</a>';
}
add_filter('excerpt_more', 'new_excerpt_more');
/* Add Page Slug to Body Class
-------------------------------------------------------------- */
function add_slug_body_class($classes)
{
    global $post;
    if (isset($post)) {
        $classes[] = $post->post_type . '-' . $post->post_name;
    }
    return $classes;
}
add_filter('body_class', 'add_slug_body_class');
/* ACF: CREATE OPTIONS PAGE
-------------------------------------------------------------- */
if (function_exists('acf_add_options_page')) {
    acf_add_options_page(array(
        'page_title' => 'Header Settings',
        'menu_title' => 'Header Settings',
        'menu_slug' => 'header-general-settings',
        'capability' => 'edit_posts',
        'redirect' => false
    ));
    acf_add_options_page(array(
        'page_title' => 'Footer Settings',
        'menu_title' => 'Footer Settings',
        'menu_slug' => 'footer-general-settings',
        'capability' => 'edit_posts',
        'redirect' => false
    ));
    acf_add_options_page(array(
        'page_title' => 'Review Settings',
        'menu_title' => 'Review Settings',
        'menu_slug' => 'review-general-settings',
        'capability' => 'edit_posts',
        'redirect' => false
    ));
}
/* ALLOW SVGs IN MEDIA UPLOAD
-------------------------------------------------------------- */
function cc_mime_types($mimes)
{
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');


/* Search Tweaks
-------------------------------------------------------------- */


/**
 * [list_searcheable_acf list all the custom fields we want to include in our search query]
 * @return [array] [list of custom fields]
 */
function list_searcheable_acf(){
  $list_searcheable_acf = array("attorney_name");
  return $list_searcheable_acf;
}


/**
 * [advanced_custom_search search that encompasses ACF/advanced custom fields and taxonomies and split expression before request]
 * @param  [query-part/string]      $where    [the initial "where" part of the search query]
 * @param  [object]                 $wp_query []
 * @return [query-part/string]      $where    [the "where" part of the search query as we customized]
 * see https://vzurczak.wordpress.com/2013/06/15/extend-the-default-wordpress-search/
 * credits to Vincent Zurczak for the base query structure/spliting tags section
 */
function advanced_custom_search( $where, &$wp_query ) {

    global $wpdb;
 
    if ( empty( $where ))
        return $where;
 
    // get search expression
    $terms = $wp_query->query_vars[ 's' ];
    
    // explode search expression to get search terms
    $exploded = explode( ' ', $terms );
    if( $exploded === FALSE || count( $exploded ) == 0 )
        $exploded = array( 0 => $terms );
         
    // reset search in order to rebuilt it as we whish
    $where = '';
    
    // get searcheable_acf, a list of advanced custom fields you want to search content in
    $list_searcheable_acf = list_searcheable_acf();

    foreach( $exploded as $tag ) :
        $where .= " 
          AND (
            (wp_posts.post_title LIKE '%$tag%')
            OR (wp_posts.post_content LIKE '%$tag%')
            OR EXISTS (
              SELECT * FROM wp_postmeta
	              WHERE post_id = wp_posts.ID
	                AND (";

        foreach ($list_searcheable_acf as $searcheable_acf) :
          if ($searcheable_acf == $list_searcheable_acf[0]):
            $where .= " (meta_key LIKE '%" . $searcheable_acf . "%' AND meta_value LIKE '%$tag%') ";
          else :
            $where .= " OR (meta_key LIKE '%" . $searcheable_acf . "%' AND meta_value LIKE '%$tag%') ";
          endif;
        endforeach;

	        $where .= ")
            )
            OR EXISTS (
              SELECT * FROM wp_comments
              WHERE comment_post_ID = wp_posts.ID
                AND comment_content LIKE '%$tag%'
            )
            OR EXISTS (
              SELECT * FROM wp_terms
              INNER JOIN wp_term_taxonomy
                ON wp_term_taxonomy.term_id = wp_terms.term_id
              INNER JOIN wp_term_relationships
                ON wp_term_relationships.term_taxonomy_id = wp_term_taxonomy.term_taxonomy_id
              WHERE (
          		taxonomy = 'post_tag'
            		OR taxonomy = 'category'          		
            		OR taxonomy = 'myCustomTax'
          		)
              	AND object_id = wp_posts.ID
              	AND wp_terms.name LIKE '%$tag%'
            )
        )";
    endforeach;
    return $where;
}
 
add_filter( 'posts_search', 'advanced_custom_search', 500, 2 );



///// Permalink Rewrites



function prefix_rewrite_rule() {
		
		
		add_rewrite_rule( 'lawfirm_locations/locations/([^/]+)/([^/]+)', 'index.php?lawfirm_location_currentstate=$matches[1]&lawfirm_location_currentcity=$matches[2]', 'top' );
	
		add_rewrite_rule( 'lawfirm_practiceareas/([^/]+)/([^/]+)/([^/]+)', 'index.php?lawfirm_pa=$matches[1]&currentstate=$matches[2]&currentcity=$matches[3]', 'top' );
		
		add_rewrite_rule( 'lawfirm_practiceareas/([^/]+)/([^/]+)', 'index.php?lawfirm_pa=$matches[1]&currentstate=$matches[2]', 'top' );
    
    
 }
 
add_action( 'init', 'prefix_rewrite_rule' );


function prefix_register_query_var( $vars ) {
    $vars[] = 'lawfirm_location_currentstate';
    $vars[] = 'lawfirm_location_currentcity';
    $vars[] = 'lawfirm_pa';
    $vars[] = 'currentstate';
    $vars[] = 'currentcity';
 
    return $vars;
}
 
add_filter( 'query_vars', 'prefix_register_query_var' );


function prefix_url_rewrite_templates() {
	
	
	
		if ( get_query_var( 'lawfirm_location_currentstate') && get_query_var( 'lawfirm_location_currentcity') ) { // or the other isset example  if(!isset( $wp_query->query['photos'] ))
       
	  
	  	add_filter( 'template_include', function() {
            return get_template_directory() . '/page-practicearea_city.php';
       });

    }
		
		
		
 
    if ( get_query_var( 'currentstate') ) { // or the other isset example  if(!isset( $wp_query->query['photos'] ))
       
	  
	  	add_filter( 'template_include', function() {
            return get_template_directory() . '/page-locations_state_pa.php';
       });

    }
    
    

    if (get_query_var( 'currentstate') && get_query_var( 'currentcity')) { 
       
	    
	    
			add_filter( 'template_include', function() {
            return get_template_directory() . '/page-locations_city_pa.php';
       });


    }

}
 
add_action( 'template_redirect', 'prefix_url_rewrite_templates' );




// prevent logouts

/*

https://wordpress.stackexchange.com/questions/114439/preventing-session-timeout


add_filter( 'auth_cookie_expiration', 'keep_me_logged_in_for_1_year' );
function keep_me_logged_in_for_1_year( $expirein ) {
    return 31556926; // 1 year in seconds
}
*/


