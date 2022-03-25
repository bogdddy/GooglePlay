<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class App extends Model
{
    protected $fillable = [
        'name',
        'google_play_id',
        'country',
        'url',
        'score',
        'installs',
        'price',
        'description',
        'developer_id',
        'category_id',
        'release_date',
        'update_date'
    ];

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
