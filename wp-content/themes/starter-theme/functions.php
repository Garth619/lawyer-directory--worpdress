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



/* Rest Api Routes and Endpoints */


// states

function list_states() {
		
		$parent = 111;
	
		$terms = get_terms(array(
			'taxonomy' => 'lawfirm_locations',
			'orderby'  => 'name',
			'parent' => $parent,
			'hide_empty' => true
		));
		
		return $terms;

}

function list_states_route() {
	register_rest_route( 'locations/v1', '/states/', array(
		'methods' => 'GET',
		'callback' => 'list_states',)
	);
} 


add_action( 'rest_api_init', 'list_states_route');



// Cities with Practice Areas

function cites_with_pa() {
	
	global $post;
	
	$state = 112;
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
	
	$querystate = new WP_Query( $query_args );
	
		if ( $querystate->have_posts() ) {
 
			while ( $querystate->have_posts() ) {
 
        $querystate->the_post();
        
        	if( has_term('', 'lawfirm_practiceareas') ){
        
						$term_list = wp_get_post_terms($post->ID, 'lawfirm_practiceareas', array("fields" => "ids"));

						$statetags = array_unique(array_merge($stateTags,$term_list), SORT_REGULAR);
				
				}
			}
 		}
 
 		wp_reset_postdata();
 		
 		
 		
 		return rest_ensure_response($statetags);
	
}


function cites_with_pa_route() {
	register_rest_route( 'locations/v1', '/cities', array(
		'methods' => 'GET',
		'callback' => 'cites_with_pa',)
	);
}


add_action( 'rest_api_init', 'cites_with_pa_route' );


//////////// practice

function my_awesome_func( $data ) {
  $posts = get_posts( array(
    'author' => $data['id'],
  ) );
 
  if ( empty( $posts ) ) {
    return new WP_Error( 'no_author', 'Invalid author', array( 'status' => 404 ) );
  }
 
  return $posts[0]->post_title;
  
}

add_action( 'rest_api_init', function () {
  register_rest_route( 'lawyer-route/v1', '/author/(?P<id>\d+)', array(
    'methods' => 'GET',
    'callback' => 'my_awesome_func',
    'args' => array(
      'id' => array(
        'validate_callback' => function($param, $request, $key) {
          return is_numeric( $param );
        }
      ),
    ),
  ) );
} );


////////////









function walden_get_all_post_ids() {
	
	$terms = get_terms( array(
        'numberposts' => -1,
        'taxonomy'   => 'lawfirm_locations',
        'orderby'  => 'name',
        'parent' => 0,
        'child_of' => false
    ) );
 
    return $terms;
    
    
    // this isn't exact but follow syntax https://wordpress.stackexchange.com/questions/75017/get-tags-specific-category
    
    
    
    
}
 
// Add Walden/v1/get-all-post-ids route
add_action( 'rest_api_init', function () {
	register_rest_route( 'walden/v1', '/get-all-post-ids/', array(
		'methods' => 'GET',
		'callback' => 'walden_get_all_post_ids',
	) );
} );




////////////




function prefix_get_endpoint_phrase() {
    // rest_ensure_response() wraps the data we want to return into a WP_REST_Response, and ensures it will be properly returned.
    return rest_ensure_response( 'Hello World, this is the WordPress REST API' );
}


function prefix_register_example_routes() {
    // register_rest_route() handles more arguments but we are going to stick to the basics for now.
    register_rest_route( 'hello-world/v1', '/phrase', array(
        // By using this constant we ensure that when the WP_REST_Server changes our readable endpoints will work as intended.
        'methods'  => WP_REST_Server::READABLE,
        // Here we register our callback. The callback is fired when this endpoint is matched by the WP_REST_Server class.
        'callback' => 'prefix_get_endpoint_phrase',
    ) );
}
 
add_action( 'rest_api_init', 'prefix_register_example_routes' );





/////////////





/**
 * This is our callback function to return our products.
 *
 * @param WP_REST_Request $request This function accepts a rest request to process data.
 */
function prefix_get_products( $request ) {
    // In practice this function would fetch the desired data. Here we are just making stuff up.
    $products = array(
        '1' => 'I am product 1',
        '2' => 'I am product 2',
        '3' => 'I am product 3',
    );
 
    return rest_ensure_response( $products );
}
 
/**
 * This is our callback function to return a single product.
 *
 * @param WP_REST_Request $request This function accepts a rest request to process data.
 */
function prefix_get_product( $request ) {
    // In practice this function would fetch the desired data. Here we are just making stuff up.
    $products = array(
        '1' => 'I am product 1',
        '2' => 'I am product 2',
        '3' => 'I am product 3',
    );
 
    // Here we are grabbing the 'id' path variable from the $request object. WP_REST_Request implements ArrayAccess, which allows us to grab properties as though it is an array.
    $id = (string) $request['id'];
 
    if ( isset( $products[ $id ] ) ) {
        // Grab the product.
        $product = $products[ $id ];
 
        // Return the product as a response.
        return rest_ensure_response( $product );
    } else {
        // Return a WP_Error because the request product was not found. In this case we return a 404 because the main resource was not found.
        return new WP_Error( 'rest_product_invalid', esc_html__( 'The product does not exist.', 'my-text-domain' ), array( 'status' => 404 ) );
    }
 
    // If the code somehow executes to here something bad happened return a 500.
    return new WP_Error( 'rest_api_sad', esc_html__( 'Something went horribly wrong.', 'my-text-domain' ), array( 'status' => 500 ) );
}
 
/**
 * This function is where we register our routes for our example endpoint.
 */
function prefix_register_product_routes() {
    // Here we are registering our route for a collection of products.
    register_rest_route( 'my-shop/v1', '/products', array(
        // By using this constant we ensure that when the WP_REST_Server changes our readable endpoints will work as intended.
        'methods'  => WP_REST_Server::READABLE,
        // Here we register our callback. The callback is fired when this endpoint is matched by the WP_REST_Server class.
        'callback' => 'prefix_get_products',
    ) );
    // Here we are registering our route for single products. The (?P<id>[\d]+) is our path variable for the ID, which, in this example, can only be some form of positive number.
    register_rest_route( 'my-shop/v1', '/products/(?P<id>[\d]+)', array(
        // By using this constant we ensure that when the WP_REST_Server changes our readable endpoints will work as intended.
        'methods'  => WP_REST_Server::READABLE,
        // Here we register our callback. The callback is fired when this endpoint is matched by the WP_REST_Server class.
        'callback' => 'prefix_get_product',
    ) );
}
 
add_action( 'rest_api_init', 'prefix_register_product_routes' );







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







		