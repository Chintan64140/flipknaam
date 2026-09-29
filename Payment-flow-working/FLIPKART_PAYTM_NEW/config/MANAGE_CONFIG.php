<?php

// Dynamic parameters
define("db_host", "localhost");
define("db_user", "u753794204_dry");
define("db_pass", "wS!3domdJmx");
define("db_name", "u753794204_dry");

define("IS_DEVELOPMENT", false);
define("IS_PRODUCTION", (!IS_DEVELOPMENT));

// Extract folder name from the URL
$uri_parts = explode('/', $_SERVER['REQUEST_URI']);
$folder_name = $uri_parts[1];  // The folder name is the second part of the URL

if (IS_PRODUCTION) {
    define("API_SERVICE_URL", "http://" . $_SERVER['HTTP_HOST'] . "/api_services/");
    define("ADMIN_PANEL_URL", "http://" . $_SERVER['HTTP_HOST'] . "/admin_panel/");
    define("ROOT_URL", "http://" . $_SERVER['HTTP_HOST'] . "/");
    define("ALLOW_EXTERNAL_SCRIPT", "1");
    define("ALLOW_MIXPANEL_SCRIPT", "1");
} else {
    define("API_SERVICE_URL", "http://" . $_SERVER['HTTP_HOST'] . "/product/HTML/flipkart/api_services/");
    define("ADMIN_PANEL_URL", "http://" . $_SERVER['HTTP_HOST'] . "/product/HTML/flipkart/admin_panel/");
    define("ROOT_URL", "http://" . $_SERVER['HTTP_HOST'] . "/product/HTML/flipkart/");
    define("ALLOW_EXTERNAL_SCRIPT", "0");
    define("ALLOW_MIXPANEL_SCRIPT", "0");
}
// dynamic end



