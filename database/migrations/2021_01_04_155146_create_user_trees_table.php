<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserTreesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_trees', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('parent_user_id');
            $table->unsignedBigInteger('child_user_id');
            $table->unsignedBigInteger('referred_by');
            $table->timestamps();

            $table->foreign('parent_user_id')
                ->references('id')
                ->on('users')
                ->onDelete('RESTRICT');
            $table->foreign('child_user_id')
                ->references('id')
                ->on('users')
                ->onDelete('RESTRICT');
            $table->foreign('referred_by')
                ->references('id')
                ->on('users')
                ->onDelete('RESTRICT');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_trees');
    }
}
