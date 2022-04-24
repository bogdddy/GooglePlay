<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    use HasFactory;

    protected $fillable = [
        'package',
        'dataInstalls'
    ];

    /**
     * updateHistory
     * Actualizem o creeem el historial de cada aplicació
     * a la taula History
     * @param  $package $installs
     */
    public static function updateHistory (String $package, int $installs)
    {
        $jsonArrayInstalls = '[]';
        $date = date('d-m-Y');

        $history = History::firstOrCreate(
            ['package' => $package],
            ['dataInstalls' => $jsonArrayInstalls]
        );

        $jsonBD = $history->dataInstalls;

        $arrayInstalacions = json_decode($jsonBD,true);
        $notHaveInstalls = !array_key_exists($date, $arrayInstalacions);

        if($notHaveInstalls) {
            $arrayInstalacions[$date] = $installs;

            $history->dataInstalls = json_encode($arrayInstalacions);
            $history->save();

        }
    }
}
