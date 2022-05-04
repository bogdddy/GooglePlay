<?php

namespace Tests\Feature;
use App\Models\History;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class OscarHistoryTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */

    public function test_oscar_hsitory_new_app()
    {
        //init
        $package = "demo.demo.oscar";
        $installnum = 100;
        $data = date('d-m-Y');

        History::updateHistory($package, $installnum);  //Crida funció

        //Validació
        $history = History::where($package)->first();
        $installs = json_decode($history->dataInstalls, true);

        //existeix el registre
        $this->assertTrue(array_key_exists($data, $installs));
        $this->assertEquals($installnum, $installs[$data]);
        
    }

    public function test_oscar_hsitory_app_exist_no_duplicate()
    {
        //init
        $package = "demo2.demo.oscar";
        $installnum = 100;
        $data = date('d-m-Y');

        History::updateHistory($package, $installnum);  //Crida funció
        History::updateHistory($package, $installnum);  //Crida funció

        //Validació
        $historys = History::where($package)->get();
        //Es comprova si n'hi ha només 1
        $this->assertEquals(1,count($historys));

        //Validació si ha estat correcte
        $history = History::where($package)->first();
        $installs = json_decode($history->dataInstalls, true);

        //existeix el registre
        $this->assertTrue(array_key_exists($data, $installs));
        $this->assertEquals($installnum, $installs[$data]);
    }

    /*public function test_oscar_hsitory_new_app()
    {

    }*/
}
