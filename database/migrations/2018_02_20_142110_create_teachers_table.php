<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeachersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teachers', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned()->index();
            $table->string('teacher_phone')->nullable();
            $table->string('teacher_education')->nullable();
            $table->string('teacher_desingnation')->nullable();
            $table->string('teacher_institute')->nullable();
            $table->string('teacher_address', 5000)->nullable();
            $table->string('social_link', 10000)->nullable();
            $table->string('teacher_image')->nullable();
            $table->boolean('teacher_status')->default(0)->nullable();
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
        Schema::dropIfExists('teachers');
    }
}
