<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| Hooks
| -------------------------------------------------------------------------
| This file lets you define "hooks" to extend CI without hacking the core
| files.  Please see the user guide for info:
|
|	http://codeigniter.com/user_guide/general/hooks.html
|
*/
/* Web site set maintenance mode */
$hook['pre_system'][] = array(
    'class'    => 'MaintenanceHook',
    'function' => 'offline_check',
    'filename' => 'MaintenanceHook.php',
    'filepath' => 'hooks'
);