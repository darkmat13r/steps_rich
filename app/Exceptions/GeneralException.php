<?php

namespace App\Exceptions;

use App\Helpers\JsonResponse;
use Exception;
use Throwable;

class GeneralException extends Exception
{
    //

    private $errorCode = 1;


    public function __construct($message = "", $errorCode = 1, $code = 0, Throwable $previous = null)
    {
        $this->errorCode = $errorCode;
        parent::__construct($message, $code, $previous);
    }

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
        return JsonResponse::fail($this->getMessage(), $this->getCode() ? $this->getCode() : 200, $this->errorCode);
    }

}
