@extends('layouts.app')

@section('title')
{{$app->name}} | GooglePlayM7
@endsection

@section('customcss')
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
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
@endsection
@section('customjs')
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
@endsection

@section('content')
	<!--Container-->
	<div class="container w-full mx-auto pt-20">

		<div class="w-full px-4 md:px-0 md:mt-8 mb-16 text-gray-800 leading-normal">

			<!--Console Content-->
			<div class="grid grid-rows-1 grid-flow-col auto-cols-max gap-4">

                <div class="row-span-3 w-80 pt-20 md:h-1/8  p-0">
                    <!--Metric Card-->

                    <div class="pr-0">
                        @foreach($app->images as $image)
                            @if ($image->type_id === 1)
                                <img class="rounded-lg" src="{{$image->url}}">
                            @endif
                        @endforeach
                    </div>
                </div>
                <div class="grid grid-cols-3 px-16 gap-2 text-right md:text-center">
                    <div class="md:h-1/4 p-1 col-span-3">
                        <h6 class="font-bold uppercase text-gray-600">&nbsp;</h6>
                        <h3 class="font-bold text-3xl text-gray-1000">{{$app->name}} </h3>
                    </div>      
                   
            
                    <div class="w-full md:h-1/4 p-1 col-span-2" >
                    <!--Metric Card-->
                        <div class="bg-gray-300 border border-gray-600 rounded shadow p-2">
                            <div class="flex flex-row items-center">

                                <div class="flex-1 text-right md:text-center">
                                    <h3 class="font-bold text-1xl text-gray-600">Develeoper: {{$app->developer->name}} </h3>
                                </div>
                            </div>
                        </div>
                    <!--/Metric Card-->
                    </div>

                    <div class=" w-full md:h-1/4 p-1">
                    <!--Metric Card-->
                        <div class="bg-gray-300 border border-gray-600 rounded shadow p-2">
                            <div class="flex flex-row items-center">
                                <div class="flex-1 text-right md:text-center">
                                    <h3 class="font-bold text-1xl text-gray-600">Category: {{$app->category->name}} </h3>
                                </div>
                            </div>
                        </div>
                    <!--/Metric Card-->
                    </div>
                    <hr class="border-b-2 border-gray-600 my-8 mx-4 col-span-3">
                    <div class=" w-full md:h-1/4 p-1">
                    <!--Metric Card-->
                        <div class="bg-gray-300 border border-gray-600 rounded shadow p-2">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded p-3 bg-pink-600"><i class="fas fa-users fa-2x fa-fw fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h5 class="font-bold uppercase text-gray-800">ID GooglePlay</h5>
                                    <h3 class="font-bold text-1xl text-gray-600">{{$app->google_play_id}} <span class="text-pink-500"><i class="fas fa-exchange-alt"></i></span></h3>
                                </div>
                            </div>
                        </div>
                    <!--/Metric Card-->
                    </div>
                    <div class=" w-full md:h-1/4 p-1">
                    <!--Metric Card-->
                        <div class="bg-gray-300 border border-gray-600 rounded shadow p-2">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded p-3 bg-red-600"><i class="fas fa-inbox fa-2x fa-fw fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h5 class="font-bold uppercase text-gray-800">País</h5>
                                    <h3 class="font-bold text-1xl text-gray-600">{{$app->country}}  <span class="text-red-500"><i class="fas fa-caret-up"></i></span></h3>
                                </div>
                            </div>
                        </div>
                    <!--/Metric Card-->
                    </div>

                    <div class=" w-full md:h-1/4 p-1">
                    <!--Metric Card-->
                        <div class="bg-gray-300 border border-gray-600 rounded shadow p-2">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded p-3 bg-indigo-600"><i class="fas fa-tasks fa-2x fa-fw fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h5 class="font-bold uppercase text-gray-800">Score</h5>
                                    <h3 class="font-bold text-1xl text-gray-600">{{$app->score}}</h3>
                                </div>
                            </div>
                        </div>
                    <!--/Metric Card-->
                    </div>

                    <div class=" w-full md:h-1/4 p-1 col-span-2"> 
                    <!--Metric Card-->
                        <div class="bg-gray-300 border border-gray-600 rounded shadow p-2">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded p-3 bg-blue-600"><i class="fas fa-server fa-2x fa-fw fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h5 class="font-bold uppercase text-gray-800">Link</h5>
                                    <h3 class="font-bold text-1xl text-gray-600">{{$app->url}}</h3>
                                </div>
                            </div>
                        </div>
                    <!--/Metric Card-->
                    </div>

                    <div class=" md:h-1/4 p-1"> 
                    <!--Metric Card-->
                        <div class="bg-gray-300 border border-gray-600 rounded shadow p-2">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded p-3 bg-blue-600"><i class="fas fa-server fa-2x fa-fw fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h5 class="font-bold uppercase text-gray-800">Installs</h5>
                                    <h3 class="font-bold text-1xl text-gray-600">{{$app->installs}}</h3>
                                </div>
                            </div>
                        </div>
                    <!--/Metric Card-->
                    </div>
                                  
                </div> 
                                    
            </div>
     
            <!--Metric Card-->
            <div class="pt-12 ">
                <hr class="border-b-2 border-gray-600 w-full"> 
            </div>          
            <h5 class="font-bold uppercase pt-12 text-gray-800">Descripció</h5>
            <div class="font-bold text-gray-600 whitespace-pre-line w-96">
                {{$app->description}}
            </div>
		</div>

        <!--Divider-->
        <hr class="border-b-2 border-gray-600 my-8 mx-4">
        @include('partials.history')
	</div>
@endsection