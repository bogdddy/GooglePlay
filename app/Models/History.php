<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class History extends Model
{
    use HasFactory;

    protected $fillable = [
        'package',
        'dataInstalls'
    ];

    public static function updateHistory (String $package, int $installs){

        $jsonArrayInstalacions = '[]';

        $history = History::firstOrCreate(

            ['package' => $package],
            ['dataInstalls' => $jsonArrayInstalacions]

        );

        $data = Carbon::now()->format('d-m-Y');

        $jsonBD = $history->dataInstalls;

        $arrayInstalacions = json_decode($jsonBD,true);

        if(!array_key_exists($data, $arrayInstalacions)) {

            $arrayInstalacions[$data] = $installs;

            $history->dataInstalls = json_encode($arrayInstalacions);

            $history->save();

        }

    }

}
