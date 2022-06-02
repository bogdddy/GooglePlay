<?php

namespace Tests\Feature;
use App\Models\History;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class MiguelHistoryTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */


    public function test_miguel_history_app_exist_no_duplicate()
    {
        $package = "demo.demo.miguel";
        $installnum = 100;
        $data = date('d-m-Y');

        History::updateHistory($package, $installnum);  
        History::updateHistory($package, $installnum);  

        $historys = History::where($package)->get();
        $this->assertEquals(1,count($historys));

        $history = History::where($package)->first();
        $installs = json_decode($history->dataInstalls, true);
        $this->assertTrue(array_key_exists($data, $installs));
        $this->assertEquals($installnum, $installs[$data]);
    }
}