<?php
if( $_SERVER['SERVER_ADDR'] == "192.168.0.7" )
{
// HTTP
define('HTTP_SERVER', 'http://192.168.0.7/hirawat/admin/');
define('HTTP_CATALOG', 'http://192.168.0.7/hirawat/');

// HTTPS
define('HTTPS_SERVER', 'http://192.168.0.7/hirawat/admin/');
define('HTTPS_CATALOG', 'http://192.168.0.7/hirawat/');


// DIR
define('DIR_APPLICATION', 'C:/xampp/htdocs/hirawat/admin/');
define('DIR_SYSTEM', 'C:/xampp/htdocs/hirawat/system/');
define('DIR_IMAGE', 'C:/xampp/htdocs/hirawat/image/');
define('DIR_LANGUAGE', 'C:/xampp/htdocs/hirawat/admin/language/');
define('DIR_TEMPLATE', 'C:/xampp/htdocs/hirawat/admin/view/template/');
define('DIR_CONFIG', 'C:/xampp/htdocs/hirawat/system/config/');
define('DIR_CACHE', 'C:/xampp/htdocs/hirawat/system/storage/cache/');
define('DIR_DOWNLOAD', 'C:/xampp/htdocs/hirawat/system/storage/download/');
define('DIR_LOGS', 'C:/xampp/htdocs/hirawat/system/storage/logs/');
define('DIR_MODIFICATION', 'C:/xampp/htdocs/hirawat/system/storage/modification/');
define('DIR_UPLOAD', 'C:/xampp/htdocs/hirawat/system/storage/upload/');
define('DIR_CATALOG', 'C:/xampp/htdocs/hirawat/catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'hirawat');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');
}

else if( $_SERVER['HTTP_HOST'] == 'localhost')
{

// HTTP
define('HTTP_SERVER', 'http://localhost/hirawat/admin/');
define('HTTP_CATALOG', 'http://localhost/hirawat/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/hirawat/admin/');
define('HTTPS_CATALOG', 'http://localhost/hirawat/');


// DIR
define('DIR_APPLICATION', 'C:/xampp/htdocs/hirawat/admin/');
define('DIR_SYSTEM', 'C:/xampp/htdocs/hirawat/system/');
define('DIR_IMAGE', 'C:/xampp/htdocs/hirawat/image/');
define('DIR_LANGUAGE', 'C:/xampp/htdocs/hirawat/admin/language/');
define('DIR_TEMPLATE', 'C:/xampp/htdocs/hirawat/admin/view/template/');
define('DIR_CONFIG', 'C:/xampp/htdocs/hirawat/system/config/');
define('DIR_CACHE', 'C:/xampp/htdocs/hirawat/system/storage/cache/');
define('DIR_DOWNLOAD', 'C:/xampp/htdocs/hirawat/system/storage/download/');
define('DIR_LOGS', 'C:/xampp/htdocs/hirawat/system/storage/logs/');
define('DIR_MODIFICATION', 'C:/xampp/htdocs/hirawat/system/storage/modification/');
define('DIR_UPLOAD', 'C:/xampp/htdocs/hirawat/system/storage/upload/');
define('DIR_CATALOG', 'C:/xampp/htdocs/hirawat/catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'hirawat');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');
	
}
else
{
	
// HTTP
define('HTTP_SERVER', 'http://www.trillionit.in/hirawat/admin/');
define('HTTP_CATALOG', 'http://www.trillionit.in/hirawat/');

// HTTPS
define('HTTPS_SERVER', 'http://www.trillionit.in/hirawat/admin/');
define('HTTPS_CATALOG', 'http://www.trillionit.in/hirawat/');


// DIR
define('DIR_APPLICATION', '/home3/vsksamsu/public_html/hirawat/admin/');
define('DIR_SYSTEM', '/home3/vsksamsu/public_html/hirawat/system/');
define('DIR_IMAGE', '/home3/vsksamsu/public_html/hirawat/image/');
define('DIR_LANGUAGE', '/home3/vsksamsu/public_html/hirawat/admin/language/');
define('DIR_TEMPLATE', '/home3/vsksamsu/public_html/hirawat/admin/view/template/');
define('DIR_CONFIG', '/home3/vsksamsu/public_html/hirawat/system/config/');
define('DIR_CACHE', '/home3/vsksamsu/public_html/hirawat/system/storage/cache/');
define('DIR_DOWNLOAD', '/home3/vsksamsu/public_html/hirawat/system/storage/download/');
define('DIR_LOGS', '/home3/vsksamsu/public_html/hirawat/system/storage/logs/');
define('DIR_MODIFICATION', '/home3/vsksamsu/public_html/hirawat/system/storage/modification/');
define('DIR_UPLOAD', '/home3/vsksamsu/public_html/hirawat/system/storage/upload/');
define('DIR_CATALOG', '/home3/vsksamsu/public_html/hirawat/catalog/');

// DB

define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'vsksamsu_hira');
define('DB_PASSWORD', 'vTeR^W$V#P)O');
define('DB_DATABASE', 'vsksamsu_hirawat');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');
	
}
