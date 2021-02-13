<?php


namespace App\Services;


use App\Repositories\UserLevelHistoryRepository;

class UserLevelHistoryService
{

    private $userLevelHistoryRepo;

    public function __construct()
    {
        $this->userLevelHistoryRepo = new UserLevelHistoryRepository();
    }


    public function getAll($userId){
        return $this->userLevelHistoryRepo->getAll($userId);
    }

}
