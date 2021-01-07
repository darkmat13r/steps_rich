<?php

namespace Database\Seeders;

use App\Models\Setting;
use Illuminate\Database\Seeder;

class SettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        (new Setting())->forceFill([
            'key' => 'ALLOW_EXTENDED_TREE',
            'value' =>  1,
            'description' =>  'Automatically add sub child under a child when a user reached maximum number of child under him.'
        ])->save();
        (new Setting())->forceFill([
            'key' => 'MAX_ALLOW_CHILD',
            'value' =>  4,
            'description' =>  'Each user can have maximum number of child user'
        ])->save();
    }
}
