<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ex_students', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned()->index();
            $table->string('ex_student_phone')->nullable();
            $table->string('ex_student_education')->nullable();
            $table->string('ex_student_education_institution')->nullable();
            $table->string('ex_student_profession')->nullable();
            $table->string('ex_student_designation')->nullable();
            $table->string('ex_student_profession_institute')->nullable();
            $table->string('ex_student_address', 5000)->nullable();
            $table->string('ex_student_passing_year')->nullable();
            $table->string('social_link', 500)->nullable();
            $table->string('ex_student_image')->nullable();
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
        Schema::dropIfExists('ex_students');
    }
}
