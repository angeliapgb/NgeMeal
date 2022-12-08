<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

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
            $table->id();

            $table->foreignId('category_id');
            $table->foreignId('weather_id');
            $table->foreignId('ingredient_id');

            $table->string('name');
            $table->text('description');
            $table->string('images');
            $table->text('steps');
            $table->text('ingredients');
            $table->string('addOn');
            $table->integer('price');

            $table->foreign('category_id')->references('id')->on('categories');
            $table->foreign('weather_id')->references('id')->on('weathers');
            $table->foreign('ingredient_id')->references('id')->on('ingredients');

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
