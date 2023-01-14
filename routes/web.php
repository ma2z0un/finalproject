<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Schema;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\InstallController;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
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
})->name('welcome');



// Route::get('/install', function () {
   
//     return view('install');
// })->name('install');
// Route::get('/install', function () {
   
//     return view('installajax');
// })->name('install');

Route::post('/install', [InstallController::class,'createdb'])->name('install.db');
// Route::get('/installed', [InstallController::class,'installed'])->name('installed');
Route::get('/install', [InstallController::class,'installajax'])->name('install')->middleware('signed');
// Route::get('/installes',  [InstallController::class,'getSignedUrl']);
Route::get('/installredirect',  [InstallController::class,'getSignedUrl']);


Auth::routes([
    'verify'=>true
]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware('verified');

