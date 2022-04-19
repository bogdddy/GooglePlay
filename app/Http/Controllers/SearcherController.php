<?php

use Illuminate\Http\Request;

class SearcherController extends Controller
{ 

    public function search(Request $request)
    {
        $q = $request->input('q');

        $apps = App::where('name', 'LIKE', '%'.$q.'%')->get();


        return view('searcher.show')->with(compact('apps'));
    }

}