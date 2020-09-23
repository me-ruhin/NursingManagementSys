<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Auth::routes();

Route::get('/user/dashboard', function () {
    return view('backend.index');
})->name('admin.dashboard');




Route::get('/home', 'HomeController@index')->name('home');


/*Member Registration Route Start heree

@Author:Ruhin
@Controller : RegistrationController
@view:Auth\Register
*/


Route::post('become/member','RegistrationController@register')->name('become.member');


/*Userlist Route Start heree

@Author:Ruhin
@Controller : SettingsController
@view:backend\profile
*/

Route::get('user/profile','SettingsController@getUserList')->name('userlist');



/*Nursing route Start here
    @Author:Ruhin Mia
    @controller: NurseController
    @view: backend/nurse
*/
Route::get('customer/list','CustomerController@getCustomerList')->name('customerlist');
Route::post('customer/store','CustomerController@storeCustomerInfo')->name('customer.store');


Route::put('customer/update/{id}','CustomerController@update')->name('customer.update');
Route::delete('customer/destroy/{id}','CustomerController@destroy')->name('customer.destroy');





// profile Setting Route End Here

/*Nursing route Start here
    @Author:Ruhin Mia
    @controller: NurseController
    @view: backend/nurse
*/


Route::resource('nurse','NurseController');
Route::post('add/eduction/qualification','NurseController@addQutalification')->name('add.nurse.qualification');
Route::post('add/nurse/reference','NurseController@addReferences')->name('add.nurse.reference');



Route::post('add/job/experience','NurseController@addExpericence')->name('add.nurse.experience');

 Route::resource('product', 'ProductController');

 Route::get('sale-create','SaleController@index')->name('sale.create');
 Route::post('sale-add-cart','SaleController@CartProducts')->name('sale.add.cart');

 // Customer Setting Route End Here


 /*Find the product Price */

 Route::post('find/product/price','SaleController@findProductInfo');



 Route::post('product/sale','SaleController@saleProduct')->name('product.sale');

 /*Account Routes Start here*/


 Route::get('account/lists','AccountController@index')->name('account.list');
 Route::post('account/store','AccountController@Store')->name('account.create');
 Route::put('account/update/{id}','AccountController@update')->name('account.update');
 Route::delete('account/delete/{id}','AccountController@destroy')->name('account.destroy');

 /*Account Routes End here*/


 /*Test Invoice Page Route*/


 
 Route::get('view/invoice',function(){

    return view('backend.invoice.invoice');
 });


 

 /*Test Invoice Page Route End*/


 /*
    @Site settings Route 
    @Author:Ruhin Mia
    @Controller : WebsettingController
    @ View:backend/websettings

 */

Route::get('update/web-settings','WebsettingController@updateSiteInfo')->name('website.settings');
Route::put('update/web-settings','WebsettingController@updateInfo')->name('website.settings.update');


 /*Site Settings Route End here*/



