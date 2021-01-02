<?php

namespace Database\Seeders;

use App\Models\HealthCondition;
use App\Services\HealthConditionService;
use Illuminate\Database\Seeder;

class HealthConditionsSeeder extends Seeder
{

    private $healthConditionService;
    public function __construct()
    {
        $this->healthConditionService = new HealthConditionService();
    }

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $this->healthConditionService->create('High Blood Sugar');
        $this->healthConditionService->create('High Blood Pressure');
        $this->healthConditionService->create('High Cholesterol');
        $this->healthConditionService->create('Hear Disease');
        $this->healthConditionService->create('Lung Disease');
        $this->healthConditionService->create('Others');
    }
}
