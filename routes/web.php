<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
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

// Route::get('/', function () {
//     return view('layouts.master');
// })->name('home');
Route::get('/', [PageController::class, 'tampil'])->name('home');
Route::get('/mahasiswa', [PageController::class, 'mahasiswa'])->name('mahasiswa');

// Route::get('/mahasiswa', function(){
//     return view('layouts.mahasiswa');
// })->name('mahasiswa');
