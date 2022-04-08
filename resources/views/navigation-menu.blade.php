<section class="relative mx-auto">
        <nav class="flex justify-between bg-gray-900 text-white ">
        <div class="px-5 xl:px-12 py-6 flex w-full items-center">
        <a class="text-3xl font-bold font-heading" href="/">
                    Apps   finder.
                    </a>
                    <ul class="hidden md:flex px-4 mx-auto font-semibold font-heading space-x-12 items-right">
                    <li><a class="hover:text-gray-200" href="/">Home</a></li>
                    <li><a class="hover:text-gray-200" href="">Search app</a></li>
                    </ul>
        <!-- Header Icons -->
        <div class="hidden xl:flex items-center space-x-5 items-center">
         
          <!-- Sign In / Register-->
          @if (Auth::check()) 
          <a class="flex items-center hover:text-gray-200" href="{{route('backoffice-dashboard')}}">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 hover:text-gray-200" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              <span class="ml-2">Accedeix al gestor</span>
          </a>
          <a class="flex items-center hover:text-gray-200" href="{{route('logout')}}">
              <span class="ml-2">Tancar sessió</span>
          </a>

          @else
          <a class="flex items-center hover:text-gray-200" href="{{route('login')}}">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 hover:text-gray-200" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              <span class="ml-2">Inicia sessio</span>
          </a>

          @endif
          
        </div>
      </div>
      <!-- Responsive navbar -->
        @if (Auth::check()) 
          <a class="xl:hidden flex mr-2 items-center" href="{{route('backoffice-dashboard')}}">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 hover:text-gray-200" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              <span class="ml-2">Accedeix al gestor</span>
          </a>
          <a class="xl:hidden flex mr-6 items-center" href="{{route('logout')}}">
              <span class="ml-2">Tancar sessió</span>
          </a>

          @else
          <a class="xl:hidden flex mr-6 items-center" href="{{route('login')}}">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 hover:text-gray-200" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              <span class="ml-2">Inicia sessio</span>
          </a>

        @endif
    </nav>