<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ratings', function (Blueprint $table) {
            $table->id();
            $table->integer("five_stars");
            $table->integer("four_stars");
            $table->integer("three_stars");
            $table->integer("two_stars");
            $table->integer("one_star");
            $table->foreignId("app_id");
            $table->timestamps();

            $table->foreign("app_id")->references("id")->on("apps");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ratings');
    }
};
