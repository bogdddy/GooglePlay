<?php

use App\Http\Controllers\FrontController;
use App\Http\Controllers\GPlayAppsController;
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

Route::get('/app/{id}', [FrontController::class, 'show'])->name('show.app');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::get("get_app_info", [GPlayAppsController::class, 'getAppsInfo'])->name("getAppsInfo");

Route::get("search", [SearcherController::class, 'search'])->name("search");
