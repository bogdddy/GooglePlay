@extends('layouts.app')

@section('title')
GooglePlayM7Ian
@endsection
<!-- 
@section('customcss')
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
{{--    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js" integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ=" crossorigin="anonymous"></script>--}}
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
	<style>
		.bg-black-alt  {
			background:#191919;
		}
		.text-black-alt  {
			color:#191919;
		}
		.border-black-alt {
			border-color: #191919;
		}

	</style>
@endsection -->

@section('content')
    @foreach($apps as $app)
    <div class="max-w-sm rounded overflow-hidden shadow-lg">
    <img class="w-full" src="{{$app->icon}}" alt="Sunset in the mountains">
    <div class="px-6 py-4">
        <div class="font-bold text-xl mb-2"><a href="{{route('show.app',['id'=>$app->google_play_id])}}">{{$app->name}}</a></div>
    </div>
    <div class="px-6 pt-4 pb-2">
        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">{{$app->category->name}}</span>
    </div>
    
    </div>
    @endforeach
@endsection
