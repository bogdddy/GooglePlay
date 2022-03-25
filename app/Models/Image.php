<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use HasFactory;

    protected $fillable = [
        'url',
        'original_size_url',
        'binary_image_content',
        'app_id',
        'type_id'
    ];

    public function app()
    {
        return $this->belongsTo(App::class);
    }
}
