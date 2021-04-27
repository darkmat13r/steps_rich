<?php


namespace App\Services\Payment;


class PayoutReceiverBuilder
{
    private $recipientType;
    private $amount;
    private $currency;
    private $note;
    private $senderItemId;
    private $receiver;

    /**
     * @return mixed
     */
    public function getRecipientType()
    {
        return $this->recipientType;
    }

    /**
     * @param mixed $recipientType
     */
    public function setRecipientType($recipientType)
    {
        $this->recipientType = $recipientType;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getAmount()
    {
        return $this->amount;
    }

    /**
     * @param mixed $amount
     */
    public function setAmount($amount)
    {
        $this->amount = $amount;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getCurrency()
    {
        return $this->currency;
    }

    /**
     * @param mixed $currency
     */
    public function setCurrency($currency)
    {
        $this->currency = $currency;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getNote()
    {
        return $this->note;
    }

    /**
     * @param mixed $note
     */
    public function setNote($note)
    {
        $this->note = $note;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getSenderItemId()
    {
        return $this->senderItemId;
    }

    /**
     * @param mixed $senderItemId
     */
    public function setSenderItemId($senderItemId)
    {
        $this->senderItemId = $senderItemId;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getReceiver()
    {
        return $this->receiver;
    }

    /**
     * @param mixed $receiver
     */
    public function setReceiver($receiver)
    {
        $this->receiver = $receiver;
        return $this;
    }


    function create()
    {
        return [
            "recipient_type" => "EMAIL",
            "amount" => [
                "value" => $this->amount,
                "currency" => $this->currency
            ],
            "note" =>$this->note,
            "sender_item_id" => $this->senderItemId,
            "receiver" => $this->receiver
        ];
    }


}
