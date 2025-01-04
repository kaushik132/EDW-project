<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTitleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('title', function (Blueprint $table) {
            $table->increments('id');
            $table->string('seo_title_home')->nullable();
            $table->text('seo_des_home')->nullable();
            $table->text('seo_key_home')->nullable();
            $table->string('seo_title_about')->nullable();
            $table->text('seo_des_about')->nullable();
            $table->text('seo_key_about')->nullable();
            $table->string('seo_title_tool')->nullable();
            $table->text('seo_des_tool')->nullable();
            $table->text('seo_key_tool')->nullable();
            $table->string('seo_title_services')->nullable();
            $table->text('seo_des_services')->nullable();
            $table->text('seo_key_services')->nullable();
            $table->string('seo_title_category')->nullable();
            $table->text('seo_des_category')->nullable();
            $table->text('seo_key_category')->nullable();
            $table->string('seo_title_contact')->nullable();
            $table->text('seo_des_contact')->nullable();
            $table->text('seo_key_contact')->nullable();
            $table->string('seo_title_login')->nullable();
            $table->text('seo_des_login')->nullable();
            $table->text('seo_key_login')->nullable();
            $table->string('seo_title_signup')->nullable();
            $table->text('seo_des_signup')->nullable();
            $table->text('seo_key_signup')->nullable();
            $table->string('seo_title_policy')->nullable();
            $table->text('seo_des_policy')->nullable();
            $table->text('seo_key_policy')->nullable();
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
        Schema::dropIfExists('title');
    }
}
