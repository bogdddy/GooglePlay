<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [
        "google_play_id",
        "name",
        "is_games_category",
        "is_family_category",
        "is_application_category"
    ];
}
