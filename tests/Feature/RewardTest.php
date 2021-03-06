<?php

namespace Tests\Feature;

use App\Models\User;
use App\Services\AuthService;
use Faker\Factory;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Log;
use Tests\TestCase;

class RewardTest extends TestCase
{
    use RefreshDatabase, WithFaker;
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_reward_system()
    {
        Artisan::call('passport:install');
        $faker = Factory::create();

        $userCount = 0;
        $users = [];
        $lastReferralCode = null;
        while($userCount < 100){
            $user = (new AuthService())->register([
                'country_code' => $faker->countryCode,
                'username' => $faker->email,
                'phone' => $faker->phoneNumber,
                'password' => 'password',
                'country'=>$faker->country,
                'device_id' =>$faker->text,
                'referral_code' => $lastReferralCode
            ]);
            $lastReferralCode = $user->referral_code;
            $users[] = $user;
            $userCount++;
        }
        $this->assertAuthenticated();


    }
}
