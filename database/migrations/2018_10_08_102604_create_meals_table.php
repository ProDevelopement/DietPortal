<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMealsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meals', function (Blueprint $table) {
            $table->increments('id');
            $table->string('type');
            $table->string('title');
            $table->string('img')->nullable();
            $table->text('preparation')->nullable();
            $table->string('Calories')->nullable();
            $table->string('Fat')->nullable();
            $table->string('Saturated Fat')->nullable();
            $table->string('Cholesterol')->nullable();
            $table->string('Sodium')->nullable();
            $table->string('Carbs')->nullable();
            $table->string('Fiber')->nullable();
            $table->string('Sugar')->nullable();
            $table->string('Protein')->nullable();
            $table->text('tags')->nullable();
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
        Schema::dropIfExists('meals');
    }
}
