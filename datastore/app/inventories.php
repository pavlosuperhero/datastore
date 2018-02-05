<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class inventories extends Model
{
    protected $table = 'inventories';
	public $primarykey = 'id';
	protected $fillable = ['item', 'item_number', 'holder', 'deslocation'];
}
