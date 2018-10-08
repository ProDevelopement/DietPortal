<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDailyPlanMealsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('daily_plan_meals', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('weakly_diet_plans_id');
            $table->foreign('weakly_diet_plans_id')->references('id')->on('weakly_diet_plans');
            $table->unsignedInteger('day');
            $table->unsignedInteger('meal_type');
            $table->unsignedInteger('meals_id');
            $table->foreign('meals_id')->references('id')->on('meals');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('daily_plan_meals');
    }
}
