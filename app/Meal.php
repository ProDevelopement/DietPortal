<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Meal extends Model
{
    protected $fillable = [
        'type', 'title', 'img', 'preparation', 'Calories', 'Fat', 'Saturated Fat',
        'Cholesterol', 'Sodium', 'Carbs', 'Fiber', 'Sugar', 'Protein', 'tags', 
    ];


    public function ingredients()
    {
        return $this->hasMany('App\Ingredient');
    }

}
