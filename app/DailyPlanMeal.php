<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DailyPlanMeal extends Model
{
    public function user()
    {
        return $this->belongsTo('App\WeaklyDietPlan');
    }
    
    public function planMeals()
    {
        return $this->hasMany('App\Meal');
    }
}
