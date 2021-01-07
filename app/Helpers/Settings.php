<?php
if (!function_exists('setting')) {
    function setting($key, $default=null)
    {
        $setting = \App\Models\Setting::where('key', $key)->first();
        if ($setting)
            return $setting->value;
        if($default)
            return $default;
        throw new \App\Exceptions\GeneralException($key . ' setting not found');
    }
}
