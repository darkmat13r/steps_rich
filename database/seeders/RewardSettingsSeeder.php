<?php

namespace Database\Seeders;

use App\Models\RewardSetting;
use Illuminate\Database\Seeder;

class RewardSettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        (new RewardSetting())->forceFill([
            'tree_level' => 0,
            'step_level' => 1,
            'reward' => 6.00
        ])->save();
        //Layer 1
        $this->layer1();
        $this->layer2(2);
        $this->layer2(3);
        $this->layer2(4);
        $this->layer2(5);
        $this->layer2(6);
        $this->layer2(7);
        $this->layer2(8);


    }

    private function layer1()
    {
        $layerNo = 1;
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 1,
            'reward' => 6.00
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 2,
            'reward' => 6.00
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 3,
            'reward' => 6.00
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 4,
            'reward' => 6.00
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 5,
            'reward' => 6.00
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' =>$layerNo,
            'step_level' => 6,
            'reward' => 6.00
        ])->save();
    }
    private function layer2($layerNo)
    {
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 1,
            'reward' => 0.8
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 2,
            'reward' =>  0.8
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 3,
            'reward' =>  0.8
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 4,
            'reward' => 1
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' => $layerNo,
            'step_level' => 5,
            'reward' => 1
        ])->save();
        (new RewardSetting())->forceFill([
            'tree_level' =>$layerNo,
            'step_level' => 6,
            'reward' => 1
        ])->save();
    }

}
