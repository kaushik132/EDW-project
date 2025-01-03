<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateToolTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tool', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tool_id')->nullable();
            $table->string('title')->nullable();
            $table->string('slug')->nullable();
            $table->string('short_content')->nullable();
            $table->string('description')->nullable();
            $table->string('image')->nullable();
            $table->string('alt')->nullable();
            $table->string('url')->nullable();
            $table->string('seo_title')->nullable();
            $table->string('seo_description')->nullable();
            $table->string('seo_keyword')->nullable();
            $table->string('question')->nullable();
            $table->string('answer')->nullable();
            $table->string('status')->nullable();
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
        Schema::dropIfExists('tool');
    }
}
