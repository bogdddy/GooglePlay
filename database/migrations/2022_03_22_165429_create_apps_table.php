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
        Schema::create('apps', function (Blueprint $table) {
            $table->id();
            $table->string("name");
            $table->string("google_play_id");
            $table->string("country");
            $table->string("url");
            $table->float("score");
            $table->integer("installs");
            $table->float("price");
            $table->text("description");
            $table->foreignId("developer_id");
            $table->foreignId("category_id");
            $table->timestamp("release_date")->nullable();
            $table->timestamp("update_date");
            $table->timestamps();

            $table->foreign("developer_id")->references("id")->on("developers");
            $table->foreign("category_id")->references("id")->on("categories");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('apps');
    }
};
