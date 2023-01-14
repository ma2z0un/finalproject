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
        Schema::create('main_categories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('translation_lang',10);
            $table->integer('translation_of')->unsigned();
            $table->string('name',150);
            $table->string('slug',150);
            $table->string('photo',150)->nullable();
            $table->tinyInteger('active')->default(1)->comment('0=hidden,1=visible');
          
            // $table->foreign('translation_of')->references('id')->on('main_categories')->onDelete('cascade');

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
    
        Schema::dropIfExists('main_categories');
    }
};
