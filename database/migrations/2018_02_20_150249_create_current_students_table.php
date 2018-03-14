<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCurrentStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('current_students', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned()->index();
            $table->string('student_class')->nullable();
            $table->string('student_section')->nullable();
            $table->string('student_department')->nullable();
            $table->string('student_phone')->nullable();
            $table->string('student_father_name')->nullable();
            $table->string('student_mother_name')->nullable();
            $table->string('student_parent_phone')->nullable();
            $table->string('student_address', 5000)->nullable();
            $table->string('social_link', 500)->nullable();
            $table->string('student_remark', 5000)->nullable();
            $table->string('student_image')->nullable();
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
        Schema::dropIfExists('current_students');
    }
}
