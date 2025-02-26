<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLevelRequirementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('level_requirements', function (Blueprint $table) {
            $table->id();
            $table->enum('activity_level', ['active','moderate','inactive'])->nullable();
            $table->unsignedInteger('level');
            $table->boolean('has_health_condition');
            $table->integer('min_age')->nullable();
            $table->integer('max_age')->nullable();
            $table->float('min_bmi')->nullable();
            $table->float('max_bmi')->nullable();

            $table->unsignedBigInteger('required_steps')->nullable();
            $table->unsignedInteger('required_repeat')->nullable();
            $table->unsignedInteger('required_period')->nullable();
            $table->enum('required_repeat_interval', ['day','week', 'month', 'year'])->nullable();
            $table->unsignedInteger('required_cycle')->nullable();

            $table->unsignedBigInteger('minimum_steps');
            $table->unsignedInteger('minimum_repeat');
            $table->unsignedInteger('minimum_period');
            $table->enum('minimum_repeat_interval', ['day','week', 'month', 'year']);
            $table->unsignedInteger('minimum_cycle');
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
        Schema::dropIfExists('level_requirements');
    }
}
