<?php


namespace App\Services\Payment;


class BatchPayoutRequest
{

    /**
     * @var array
     */
    private $payoutReceivers = [];
    private $emailSubject;
    private $emailMessage;

    /**
     * @return mixed
     */
    public function getPayoutReceivers()
    {
        return $this->payoutReceivers;
    }

    /**
     * @param mixed $payoutReceiver
     */
    public function addPayoutReceiver(PayoutReceiverBuilder  $payoutReceiver)
    {
        $this->payoutReceivers[] = $payoutReceiver->create();
        return $this;
    }

    /**
     * @return mixed
     */
    public function getEmailSubject()
    {
        return $this->emailSubject;
    }

    /**
     * @param mixed $emailSubject
     */
    public function setEmailSubject($emailSubject)
    {
        $this->emailSubject = $emailSubject;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getEmailMessage()
    {
        return $this->emailMessage;
    }

    /**
     * @param mixed $emailMessage
     */
    public function setEmailMessage($emailMessage)
    {
        $this->emailMessage = $emailMessage;
        return $this;
    }


}
