<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categorys';

    public function catCategory(){

        return $this->belongsTo(CatCategory::class, 'category_id');
        
      }
}
