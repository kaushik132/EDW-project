<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tool extends Model
{
    protected $table = 'tool';
    protected $primaryKey = 'id';

    public function toolCategory()
    {
        return $this->belongsTo(ToolCategory::class, 'tool_id');
    }


}
