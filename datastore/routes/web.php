<?php
use App\inventories;
Route::get('/', function () {
    return view('welcome');
});
Route::get('/inventory', 'InventoryController@inventory');
Route::get('/inventory/move', 'InventoryController@move');
Route::get('/inventory/move_form', 'InventoryController@move_form');
Route::post('/inventory/add_to_form', 'InventoryController@add_to_form');

Route::get('/inventory/create', 'InventoryController@create_form');
Route::post('/inventory', 'InventoryController@create');


Route::get('/inventory/{holder}', 'InventoryController@holder_show');

