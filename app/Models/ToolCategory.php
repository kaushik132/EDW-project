<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ToolCategory extends Model
{
    protected $primaryKey = 'id';    
    protected $table = 'tool_category';

    public function tools()
    {
        return $this->hasMany(Tool::class, 'tool_id');
    }

}
