<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CatCategory extends Model
{
    protected $table = 'cat_category';

    public function category()
    {
        return $this->hasMany(Category::class,'category_id');
    }
}
