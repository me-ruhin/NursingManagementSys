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

/*Member Registration Route Start here
@Author:Ruhin
@Controller : RegistrationController
@view:Auth\Register
*/

Route::post('become/member','RegistrationController@register')->name('become.member');

//Member Registration Route Start here

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
Route::get('download-cv/{id}','NurseController@downloadCv')->name('nurse.cv.download');

Route::resource('product', 'ProductController');
Route::get('sale-create','SaleController@index')->name('sale.create');
Route::post('sale-add-cart','SaleController@CartProducts')->name('sale.add.cart');
Route::get('invoice-list','SaleController@allInvoiceList')->name('sales.list');

// Customer Setting Route End Here

/*Find the product Price */

Route::post('find/product/price','SaleController@findProductInfo');
Route::post('product/sale','SaleController@saleProduct')->name('product.sale');

/*Find the product Price End here*/

/*Print Invoice Route Start here*/

Route::get('customer/invoice/{invoice_no}','SaleController@showCustomerInvoice')->name('customer.invoice');

/*End Route For invoice*/

/*Account Routes Start here*/

Route::get('account/lists','AccountController@index')->name('account.list');
Route::post('account/store','AccountController@Store')->name('account.create');
Route::put('account/update/{id}','AccountController@update')->name('account.update');
Route::delete('account/delete/{id}','AccountController@destroy')->name('account.destroy');

/*Individual Customer Account History*/
Route::get('customer/account/{customer_id}','CustomerController@accountInformation')->name('account.details');
/*Due Collect from Customer*/

Route::post('customer/due/payment','CustomerController@customerDuePayment')->name('due.payment');

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

/*Expense Category  Route Start here

@Author:Ruhin
@Controller : ExpenseCategoryController
@view:backend\exepnse
*/

Route::get('expense-category-list','ExpenseCategoryController@index')->name('expense.category.list');
Route::post('store-expense-category','ExpenseCategoryController@storeCategory')->name('expense.category.store');
Route::put('update-expense-category/{expense_id}','ExpenseCategoryController@UpdateCategory')->name('expense.category.update');
Route::delete('delete-expense-category/{expense_id}','ExpenseCategoryController@DeleteCategory')->name('expense.category.delete');

/*Expense Category  Route End here

/*Expense  Route Start here

@Author:Ruhin
@Controller : ExpenseCategoryController
@view:backend\exepnse
*/

Route::get('expense-list','ExpenseController@index')->name('expense.list');
Route::post('store-expense','ExpenseController@storeExpense')->name('expense.store');
Route::put('update-expense/{expense_id}','ExpenseController@UpdateExpense')->name('expense.update');
Route::delete('delete-expense/{expense_id}','ExpenseController@DeleteExpense')->name('expense.delete');

/*Expense Route End here

/*Patient Route Start here
@Author:Ruhin 
@controller : PatientController
@view:backend\patient
*/

Route::get('patient/list','PatientController@index')->name('patient.list');
Route::post('patient/store','PatientController@store')->name('patient.store');
Route::put('patient/update/{id}','PatientController@update')->name('patient.update');
Route::get('patient/complete/{id}','PatientController@completedService')->name('patient.service.complete');
Route::get('assing/nurse/project','PatientController@assignNurse')->name('assign.nurse');
Route::put('assing/nurse/{id}','PatientController@updateAssignNurse')->name('patient.nurse.update');

/*Patient individual Accounts info*/
Route::get('patient/account/{patient_id}','PatientController@accountInformation')->name('patient.account.details');

/*Due Payment*/
Route::post('patient/due/payment','PatientController@patientDuePayment')->name('patient.due.payment');

/*Nurse Attendance*/
Route::post('nurse/attendance/{id}','PatientController@nurseAttendance')->name('nurse.attendance');

/*Nurse Working History*/
Route::get('nurse/working/history/{id}','PatientController@nurseWorkingHistory')->name('nurse.history');



/*Salary Payment Route Start here
@Author:Ruhin 
@controller : SalaryController
@view:backend\salary
*/


Route::get('nurse-list','SalaryController@index')->name('nurse.list');
Route::get('nurse-payment','SalaryController@payment')->name('nurse.list.payment');
Route::post('nurse-payment','SalaryController@paymentStore')->name('nurse.slary.payment');


Route::post('nurse/working/history','NurseController@nurseWorkingHistory')->name('nurse.working.history');