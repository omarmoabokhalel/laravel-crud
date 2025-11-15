<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use App\Models\Meal;

class Category extends Model
{
    protected $fillable = ['name','slug'];
    public function meals(){
        return $this->HasMany(Meals::class);
    }
}
