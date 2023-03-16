<?php
// HTTP

/*if($_SERVER['HTTP_HOST']!='hoangsports.com')
{
    header('Location: https://hoangsports.com');
}
*/
// HTTP
define('HTTP_SERVER', 'https://'.$_SERVER['HTTP_HOST'].'/');

// HTTPS
define('HTTPS_SERVER', 'https://'.$_SERVER['HTTP_HOST'].'/');

// DIR
define('DIR_APPLICATION', __DIR__ .'/catalog/');
define('DIR_SYSTEM', __DIR__ .'/system/');
define('DIR_LANGUAGE', __DIR__ .'/catalog/language/');
define('DIR_TEMPLATE', __DIR__ .'/catalog/view/theme/');
define('DIR_CONFIG', __DIR__ .'/system/config/');
define('DIR_IMAGE', __DIR__ .'/image/');
define('DIR_CACHE', __DIR__ .'/system/cache/');
define('DIR_DOWNLOAD', __DIR__ .'/system/download/');
define('DIR_UPLOAD', __DIR__ .'/system/upload/');
define('DIR_MODIFICATION', __DIR__ .'/system/modification/');
define('DIR_LOGS', __DIR__ .'/system/logs/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'hoangsports');
define('DB_PASSWORD', '7e5u9u6us');
define('DB_DATABASE', 'zadmin_hoangsports');
define('DB_PREFIX', 'xtn_');
