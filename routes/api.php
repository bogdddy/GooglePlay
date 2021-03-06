<?php

use App\Http\Controllers\GPlayAppsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get("get_app_info", [GPlayAppsController::class, 'getAppsInfo'])->name("getAppsInfo");

Route::get('history/{package}',[\App\Http\Controllers\ApiHistoryController::class,'show'])->name('history_installs');
