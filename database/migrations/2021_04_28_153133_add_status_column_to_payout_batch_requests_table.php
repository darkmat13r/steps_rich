<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusColumnToPayoutBatchRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('payout_batch_requests', function (Blueprint $table) {
            $table->string('status')->after('batch_id')->default('PENDING');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('payout_batch_requests', function (Blueprint $table) {
            //
        });
    }
}
