<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Inventories;

class InventoryController extends Controller
{
	public function	inventory()
	{	
			$datas = inventories::all();
			return view('inventory/inventory') -> with('datas', $datas);
	}
	public function holder_show	( $holder)
	{
		$holders=inventories::where('holder', '=', $holder )->get();
		return view ('inventory/show') -> with('holders', $holders);
	}
	public	function create_form()
	{
		return view ('inventory/create');
	}
	public	function create()
	{
		inventories::create([
			'item' => request('item'),
			'item_number' => request('item_number'),
			'holder' => request('holder'),
			'deslocation' => request('deslocation')	
		]);
		return redirect('/inventory');
	}
	public function	move()
	{
		return view('inventory/move');
	}
	public function	move_form(Request $request)
	{
		if($request->ajax()){
			$output="";
			$datas = inventories::where('item', 'LIKE', '%'.$request->search.'%')->
				orWhere('holder', 'LIKE', '%'.$request->search.'%')->
				orWhere('item_number', $request->search)->get();
			if($datas)
			{
				$output.= $datas;
				return Response($output);
			}
		}
	}
}
