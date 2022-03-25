<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    use HasFactory;

    protected $fillable = [
        'five_stars',
        'four_stars',
        'three_stars',
        'two_stars',
        'one_star',
        'app_id'
    ];

    public function app()
    {
        return $this->belongsTo(App::class);
    }
}
