<?php

namespace App\Http\Controllers\Frontend;

use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Services\HealthConditionService;
use Illuminate\Http\Request;

class HealthConditionController extends Controller
{
    private $healthCondition;
    public function __construct()
    {
        $this->healthCondition = new HealthConditionService();
    }


    function getAll(){
        return JsonResponse::success($this->healthCondition->getAll());
    }
}

