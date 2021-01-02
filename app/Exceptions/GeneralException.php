<?php

namespace App\Exceptions;

use App\Helpers\JsonResponse;
use Exception;

class GeneralException extends Exception
{
    //
    /**
     * Report the exception.
     *
     * @return void
     */
    public function report()
    {
        //

    }

    /**
     * Render the exception into an HTTP response.
     *
     * @param \Illuminate\Http\Request
     * @return \Illuminate\Http\JsonResponse
     */
    public function render($request)
    {
        return JsonResponse::fail($this->getMessage(), $this->getCode() ? $this->getCode() : 200);
    }

}
