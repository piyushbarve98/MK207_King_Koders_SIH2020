<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes: 
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

/*
| -------------------------------------------------
| 		DEFINE ADMINISTRATOR TEMPLATE ROUTE
| -------------------------------------------------
*/

		
$route['switchlanguage-(:any)'] = 'admin/setting/switchLang/$1';

$route['administrator'] = 'administrator/login';

$route['administrator-503'] = 'administrator/login/pageNotFound';
$route['administrator-dashboard'] = 'administrator/dashboard';
$route['administrator-logout'] = 'administrator/dashboard/logout';
$route['administrator-forgotpassword'] = 'administrator/login/forgotPassword';
#Setting
$route['administrator-setting-profile'] = 'administrator/setting/profile';
$route['administrator-setting-change-password'] = 'administrator/setting/chnagePassword';
$route['administrator-setting-login-password'] = 'administrator/setting/firstLoginChangePassword';
$route['administrator-setting-login-password-update'] = 'administrator/setting/firstLoginSavePassword';


# User Management
//=============ADMIN Section Start
$route['administrator-admin-view'] = 'administrator/users/usersView';
$route['administrator-admin-section-(:any)'] = 'administrator/users/adminUserSection/$1';
$route['administrator-admin-details-(:any)'] = 'administrator/users/adminDetails/$1';
$route['administrator-admin-delete'] = 'administrator/users/userDelate';
$route['administrator-admin-status-change-(:any)'] = 'administrator/users/manageUserStatus/$1';
$route['administrator-admin-status-change'] = 'administrator/users/userStatusChange';
//=============ADMIN Section End

//=============OPERATOR Section Start
$route['administrator-operator-view'] = 'administrator/operator/operatorView';
$route['administrator-operator-section-(:any)'] = 'administrator/operator/operatorSection/$1';
$route['administrator-operator-details-(:any)'] = 'administrator/operator/operatorDetails/$1';
$route['administrator-operator-delete'] = 'administrator/operator/operatorDelete';
$route['administrator-operator-status-change-(:any)'] = 'administrator/operator/operatorStatus/$1';
$route['administrator-operator-status-change'] = 'administrator/operator/operatorStatusChange';


$route['administrator-verify-view'] = 'administrator/operatorUsers/usersView';
$route['administrator-users-section-(:any)'] = 'administrator/operatorUsers/usersSection/$1';


//=============OPERATOR Section End

//=============SCHEMES Section Start
$route['administrator-schemes-view'] = 'administrator/schemes/schemesView';
$route['administrator-schemes-section-(:any)'] = 'administrator/schemes/schemesSection/$1';
$route['administrator-schemes-details-(:any)'] = 'administrator/schemes/schemesDetails/$1';
$route['administrator-schemes-delete'] = 'administrator/schemes/schemesDelete';
$route['administrator-schemes-status-change-(:any)'] = 'administrator/schemes/schemesStatus/$1';
$route['administrator-schemes-status-change'] = 'administrator/schemes/schemesStatusChange';

$route['administrator-total-scheme-view'] = 'administrator/schemes/schemesTotalView';
//=============SCHEMES Section End

//=============SCHEMES APPLY Section Start
$route['administrator-schemes-apply-view'] = 'administrator/schemesApply/schemesView';
$route['administrator-schemes-apply-section-(:any)'] = 'administrator/schemesApply/schemesSection/$1';
$route['administrator-schemes-apply-details-(:any)'] = 'administrator/schemesApply/schemesDetails/$1';
$route['administrator-schemes-apply-delete'] = 'administrator/schemesApply/schemesDelete';
$route['administrator-schemes-apply-status-change-(:any)'] = 'administrator/schemesApply/schemesStatus/$1';
$route['administrator-schemes-apply-status-change'] = 'administrator/schemesApply/schemesStatusChange';
//=============SCHEMES APPLY Section End

//=============SCHEMES DUPLICATE Section Start
$route['administrator-schemes-duplicate-view'] = 'administrator/schemesDuplicate/schemesView';
$route['administrator-schemes-duplicate-section-(:any)'] = 'administrator/schemesDuplicate/schemesSection/$1';
$route['administrator-schemes-duplicate-details-(:any)'] = 'administrator/schemesDuplicate/schemesDetails/$1';
$route['administrator-schemes-duplicate-delete'] = 'administrator/schemesDuplicate/schemesDelete';
$route['administrator-schemes-duplicate-status-change-(:any)'] = 'administrator/schemesDuplicate/schemesStatus/$1';
$route['administrator-schemes-duplicate-status-change'] = 'administrator/schemesDuplicate/schemesStatusChange';
//=============SCHEMES DUPLICATE Section End

//=============FORUM Section Start
$route['administrator-forum-view'] = 'administrator/forum/forumView';
$route['administrator-forum-section-(:any)'] = 'administrator/forum/forumSection/$1';
$route['administrator-forum-details-(:any)'] = 'administrator/forum/forumDetails/$1';
$route['administrator-forum-delete'] = 'administrator/forum/forumDelete';
$route['administrator-forum-status-change-(:any)'] = 'administrator/forum/forumStatus/$1';
$route['administrator-forum-status-change'] = 'administrator/forum/forumStatusChange';
//=============FORUM Section End

/*
| -------------------------------------------------------------------------
| 		DEFINE FRONEND TEMPLATE ROUTE
| -------------------------------------------------------------------------
|*/


$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['default_controller'] = 'frontend/home';
$route['userlogin'] = 'frontend/login';
$route['userregistration'] = 'frontend/registration';
$route['saveUser'] = 'frontend/registration/saveUser';



$route['admin'] = 'admin/login';

$route['admin-503'] = 'admin/login/pageNotFound';
$route['admin-dashboard'] = 'admin/dashboard';
$route['admin-logout'] = 'admin/dashboard/logout';
$route['admin-forgotpassword'] = 'admin/login/forgotPassword';
#Setting
$route['admin-setting-profile'] = 'admin/setting/profile';
$route['admin-setting-change-password'] = 'admin/setting/chnagePassword';
$route['admin-setting-login-password'] = 'admin/setting/firstLoginChangePassword';
$route['admin-setting-login-password-update'] = 'admin/setting/firstLoginSavePassword';

# product Management

$route['admin-school-status-change-(:any)'] = 'admin/users/manageUserStatus/$1';
$route['admin-school-status-change'] = 'admin/users/userStatusChange';
$route['admin-school-details-(:any)'] = 'admin/users/coachDetails/$1';
$route['admin-school-delete'] = 'admin/users/userDelate';
$route['admin-product-section-(:any)'] = 'admin/users/productSection/$1';





$route['users-503'] = 'users/login/pageNotFound';
$route['users-dashboard'] = 'users/dashboard';
$route['users-logout'] = 'users/dashboard/logout';
$route['users-forgotpassword'] = 'users/login/forgotPassword';
#Setting
$route['users-setting-profile'] = 'users/setting/profile';
$route['users-setting-change-password'] = 'users/setting/chnagePassword';
$route['users-setting-login-password'] = 'users/setting/firstLoginChangePassword';
$route['users-setting-login-password-update'] = 'users/setting/firstLoginSavePassword';

$route['users-schemes-view'] = 'users/schemes/schemesView';

$route['schemes/cancel'] = 'users/schemes/cancel';

$route['switchlanguage-(:any)'] = 'frontend/home/switchLang/$1';
$route['schemeList'] = 'frontend/home/schemeList';


$route['administrator-messages-view'] = 'administrator/messages/messagesView';
$route['administrator-messages-section-(:any)'] = 'administrator/messages/messagesSection/$1';


//=============FORUM Section Start
$route['users-forum-view'] = 'users/forum/forumView';
$route['users-forum-section-(:any)'] = 'users/forum/forumSection/$1';
$route['users-forum-details-(:any)'] = 'users/forum/forumDetails/$1';
$route['users-forum-delete'] = 'users/forum/forumDelete';
$route['users-forum-status-change-(:any)'] = 'users/forum/forumStatus/$1';
$route['users-forum-status-change'] = 'users/forum/forumStatusChange';
//=============FORUM Section End
