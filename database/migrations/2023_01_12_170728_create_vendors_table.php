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
        Schema::create('vendors', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',150);
            $table->string('mobile',150);
            $table->text('address');
            $table->string('email',100);
            $table->string('password',100);
            
            $table->integer('category_id')->unsigned();
            $table->tinyInteger('active')->comment('0=unactive,1=active')->default(0);
            $table->string('logo',200);
            $table->timestamps();
            $table->foreign('category_id')->references('id')->on('main_categories')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vendors');
    }
};
