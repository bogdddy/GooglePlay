<?php

namespace App\Http\Controllers;

use App\Models\History;
use Illuminate\Http\Request;

class ApiHistoryController extends Controller
{

    /**
     * Display the specified resource
     */
    public function show(String $package)
    {
        return History::where("package",$package)->first()->dataInstalls;
    }
    

}
