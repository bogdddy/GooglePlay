<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class JesusTest extends TestCase
{

    //Per executar aquest test s'ha de modificar el GPlayAppsController.php
    public function test_front_controller_show(){

        $package = "demo1.demo.jesus"
        $installNumbers = 150;
        $data = Carbon::now()->format('d-m-y');


        History::updateHistory($package, $installNumbers);
        //History::updateHistory($package, $installNumbers);

        $historys = History::where("package", $package)->get();

        $history = History::where("package", $package)->first();
        $installs = json_decode($history->dataInstall, true);
        $this->assertTrue(array_key_exists($data, $installs));
        $this->assertEquals($installNumbers, $installs[$data]);
    }

}
