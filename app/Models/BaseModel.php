<?php


namespace App\Models;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
class BaseModel extends Model
{
    use TimezoneDateFormats;
}
