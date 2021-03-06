<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    use HasFactory;

    protected $fillable = [
        'url',
        'image_url',
        'youtube_id',
        'app_id'
    ];

    public function app()
    {
        return $this->belongsTo(App::class);
    }
}
