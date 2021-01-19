<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('email')->unique();
            $table->string('country_code');
            $table->string('phone');
            $table->unsignedBigInteger('steps_goal')->default(10000);
            $table->string('referral_code');
            $table->date('dob')->nullable();
            $table->enum('gender', ['male', 'female', 'other'])->nullable();
            $table->integer('age')->nullable();
            $table->enum('activity_level', ['active','moderate','inactive'])->nullable();
            $table->float('weight')->nullable()->comment('Weight Unit is KG.');
            $table->integer('height')->nullable()->comment('Height Unit is CM.');
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('device_id');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
