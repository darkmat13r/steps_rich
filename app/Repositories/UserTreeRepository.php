<?php


namespace App\Repositories;


use App\Models\UserTree;

class UserTreeRepository
{


    function getChilds($userId)
    {
        $childs = UserTree::where('parent_user_id', $userId)->get();
        return $this->fetch_recursive($childs);
    }

    function fetch_recursive($src, &$result = [])
    {
        foreach ($src as $row) {
            $result[] = $row;
            $childs = UserTree::where('parent_user_id', $row->child_user_id)->get();
            $this->fetch_recursive($childs, $result);
        }
        return $result;
    }
}
