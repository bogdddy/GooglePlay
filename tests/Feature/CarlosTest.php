<?php

namespace Tests\Feature;
use App\Models\History;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CarlosTest extends TestCase {

    public function testCarlosAppExistNoDuplicate() {

        $data = date('d-m-Y');
        $package = "demo.demo.carlos";
        $number = 75;
        
        History::updateHistory($package, $number);  

        $historys = History::where($package)->get();
        $this->assertEquals(1,count($historys));

        $history = History::where($package)->first();
        $installs = json_decode($history->dataInstalls, true);
        $this->assertTrue(array_key_exists($data, $installs));
        $this->assertEquals($number, $installs[$data]);

    }
    
}