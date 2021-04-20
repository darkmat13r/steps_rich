<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;


class CreateFeedTables extends Migration{

    public function up(){
        Schema::create('feeds', function(Blueprint $table){
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->text('content');
            $table->timestamps();
            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onDelete('SET NULL');
        });
        Schema::create('feed_images', function(Blueprint $table){
              $table->id();
            $table->unsignedBigInteger('feed_id')->nullable();
            $table->text('url');
            $table->timestamps();
            $table->foreign('feed_id')
                ->references('id')
                ->on('feeds')
                ->onDelete('SET NULL');
        });
        Schema::create('feed_likes', function(Blueprint $table){
              $table->id();
            $table->unsignedBigInteger('feed_id')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->timestamps();
            $table->foreign('feed_id')
                ->references('id')
                ->on('feeds')
                ->onDelete('SET NULL');
            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onDelete('SET NULL');
        });

        Schema::create('feed_comments', function(Blueprint $table){
              $table->id();
            $table->unsignedBigInteger('feed_id')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->text('comment');
            $table->timestamps();
            $table->foreign('feed_id')
                ->references('id')
                ->on('feeds')
                ->onDelete('SET NULL');
            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onDelete('SET NULL');
        });
    }


    public function down(){

        Schema::drop('feeds');
        Schema::drop('feed_images');
        Schema::drop('feed_likes');
        Schema::drop('feed_comments');
    }

}

