<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CharacterController;
use App\Http\Controllers\RickAndMortyController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', [CharacterController::class, 'index']);
Route::post('/characters/store', [CharacterController::class, 'save'])->name('characters.store');
Route::get('/characters/{id}', [CharacterController::class, 'show'])->name('characters.show');
Route::get('/characters/edit/{id}', [CharacterController::class, 'edit'])->name('characters.edit');
Route::put('/characters/update/{id}', [CharacterController::class, 'update'])->name('characters.update');

