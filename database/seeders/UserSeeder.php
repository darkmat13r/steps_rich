<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = User::create([
            'name'=>'Admin',
            'email'=>'admin@gmail.com',
            'country_code'=>'+91',
            'phone'=>'12345',
            'referral_code'=>'12345',
            'device_id'=>'12345',
            'password'=> Hash::make('123456'),
            'is_type'=>1,
        ]);
        $user->assignRole('admin');
    }
}
