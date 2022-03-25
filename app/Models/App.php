<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class App extends Model
{
    use HasFactory;
    
    public function rating()
    {
        return $this->hasOne(Rating::class);
    }

    public function video()
    {
        return $this->hasOne(Video::class);
    }

    public function images()
    {
        return $this->hasMany(Image::class);
    }
}
