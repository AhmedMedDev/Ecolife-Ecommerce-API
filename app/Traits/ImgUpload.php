<?php

namespace App\Traits;

use Illuminate\Support\Str;

Trait  ImgUpload
{
     function saveImage($photo,$folder){
        //save photo in folder
        $file_extension = $photo->getClientOriginalExtension();
        $file_name = time() . Str::random(5) . '.'. $file_extension;
        $path = $folder;
        $photo -> move($path,$file_name);

        return $file_name;
    }


}