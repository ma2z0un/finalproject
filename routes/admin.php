<?php


use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

use App\Providers\RouteServiceProvider;
use App\Http\Controllers\Auth\RegisterController;



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
define('PAGINATION_COUNT',10);
Route::group(['namespace'=>'Admin', 'middleware' => ['auth:admin']], function(){
    Route::get('/',[App\Http\Controllers\Admin\DashboardController::class,'index'] )->name('admin.dashboard');
    Route::post('logout',[App\Http\Controllers\Admin\LoginController::class,'logout'] )->name('admin.logout');
   
  ############################Begin Languages Routes#####################
Route::prefix('languages')->group(function(){
    Route::get('/',[App\Http\Controllers\Admin\LanguagesController::class,'index'])->name('admin.languages');
    Route::get('/create',[App\Http\Controllers\Admin\LanguagesController::class,'create'])->name('admin.languages.create');
    Route::post('/store',[App\Http\Controllers\Admin\LanguagesController::class,'store'])->name('admin.languages.store');
    Route::get('/edit/{id}',[App\Http\Controllers\Admin\LanguagesController::class,'edit'])->name('admin.languages.edit');
    Route::post('/update/{id}',[App\Http\Controllers\Admin\LanguagesController::class,'update'])->name('admin.languages.update');
    Route::get('/delete/{id}',[App\Http\Controllers\Admin\LanguagesController::class,'destroy'])->name('admin.languages.delete');
});
 ############################End Languages Routes#####################


 ############################Begin Main Categories Routes#####################
Route::prefix('main_categories')->group(function(){
    Route::get('/',[App\Http\Controllers\Admin\MainCategoriesController::class,'index'])->name('admin.maincategories');
    Route::get('/create',[App\Http\Controllers\Admin\MainCategoriesController::class,'create'])->name('admin.maincategories.create');
    Route::post('/store',[App\Http\Controllers\Admin\MainCategoriesController::class,'store'])->name('admin.maincategories.store');
    Route::get('/edit/{id}',[App\Http\Controllers\Admin\MainCategoriesController::class,'edit'])->name('admin.maincategories.edit');
    Route::post('/update/{id}',[App\Http\Controllers\Admin\MainCategoriesController::class,'update'])->name('admin.maincategories.update');
    Route::get('/delete/{id}',[App\Http\Controllers\Admin\MainCategoriesController::class,'destroy'])->name('admin.maincategories.delete');
    Route::get('/changeStatus/{id}',[App\Http\Controllers\Admin\MainCategoriesController::class,'changeStatus'])->name('admin.maincategories.status');
});
  ############################End  Main Categories Routes #####################



  ############################Begin Vendors Routes #####################
Route::prefix('vendors')->group(function(){
    Route::get('/',[App\Http\Controllers\Admin\VendorsController::class,'index'])->name('admin.vendors');
    Route::get('/create',[App\Http\Controllers\Admin\VendorsController::class,'create'])->name('admin.vendors.create');
    Route::post('/store',[App\Http\Controllers\Admin\VendorsController::class,'store'])->name('admin.vendors.store');
    Route::get('/edit/{id}',[App\Http\Controllers\Admin\VendorsController::class,'edit'])->name('admin.vendors.edit');
    Route::post('/update/{id}',[App\Http\Controllers\Admin\VendorsController::class,'update'])->name('admin.vendors.update');
    Route::get('/delete/{id}',[App\Http\Controllers\Admin\VendorsController::class,'destroy'])->name('admin.vendors.delete');
    Route::get('/changeStatus/{id}',[App\Http\Controllers\Admin\VendorsController::class,'changeStatus'])->name('admin.vendors.status');
});
################################# End Vendors Routes #####################################################

   
});


Route::group(['namespace'=>'Admin'], function(){
// Route::group(['namespace'=>'Admin', 'middleware' => ['guest:admin']], function(){
   
    // Route::get('login',[App\Http\Controllers\Auth\LoginController::class,'showLoginForm']);
    Route::get('login',[App\Http\Controllers\Admin\LoginController::class,'getLogin'])->name('get.admin.login');
    Route::post('login',[App\Http\Controllers\Admin\LoginController::class,'login'])->name('admin.login');
 

  
   
});


// Route::get('test-helper',function(){
//    return showname();
// });
