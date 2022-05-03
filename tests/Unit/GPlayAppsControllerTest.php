<?php


use PHPUnit\Framework\TestCase;

class GPlayAppsControllerTest extends TestCase
{

    //Per executar aquest test s'ha de modificar el GPlayAppsController.php
    public function test_insertActualitzarDeveloper(){

        $appDB = Package::orderBy('updated_at', 'asc')->limit(GPlayAppsController::$LIMIT_COUNT_APPS)->get();

        getAppsInfo($appDB);

        $dt = Carbon::now();

        $this->assertEquals($dt->toDateTimeString(),$appDB->update_date);

    }

}
