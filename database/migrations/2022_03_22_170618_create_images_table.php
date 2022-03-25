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
        Schema::create('images', function (Blueprint $table) {
            $table->id();
            $table->string("url");
            $table->foreignId("app_id");
            $table->foreignId("type_id");
            $table->timestamps();

            $table->foreign("app_id")->references("id")->on("apps")
                  ->onDelete("cascade");
            $table->foreign("type_id")->references("id")->on("image_types")
                  ->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('images');
    }
};
