<header class="header-area header-2 " data-aos="fade-down">
    <!-- Start mobile menu -->
    <div class="mobile-menu">
        <div class="container">
            <div class="mobile-menu-wrapper"></div>
        </div>
    </div>
    <!-- End mobile menu -->

    <div class="main-responsive-nav">
        <div class="container">
            <!-- Mobile Logo -->
            <div class="logo">
                <a href="{{ route('front.index') }}" target="_self" title="Superv">
                    <img src="{{ asset('assets/front/img/' . $bs->logo) }}" alt="Logo">
                </a>
            </div>



            <div class=" d-flex align-items-center">
                
               
                    <a href="https://rinconchami.pe/menus"style="font-size:16px" class="btn btn-sm btn-primary rounded-pill  text-light  mr-2">La Carta</a>
             

                <button class="menu-toggler" type="button">
                <span></span>
                <span></span>
                <span></span>
            </button>
            </div>
           
           
        
           
          
           
        </div>
    </div>

    <div class="main-navbar " >
        <div class="container">
            <nav class="navbar navbar-expand-lg">
                <!-- Logo -->
                @if($bs->logo)
                <a class="navbar-brand" href="{{ route('front.index') }}" target="_self" title="Superv">
                    <img src="{{ asset('assets/front/img/' . $bs->logo) }}" alt="Logo">
                </a>
                @endif
                <!-- Navigation items -->
                <div class="collapse navbar-collapse">
                    <ul id="mainMenu" class="navbar-nav mobile-item mx-auto">
                        @php
                            $links = json_decode($menus, true);
                            //   dd($links);
                        @endphp

                        @foreach ($links as $link)
                            @php
                                $href = getHref($link);
                            @endphp
                            <!---Level 1 links whick doesn't have dropdown--->
                            @if (!array_key_exists('children', $link))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ $href }}">{{ $link['text'] }}</a>
                                </li>
                            @else
                                <!-- Level 1 Link which have dropdown Menu-->
                                <li class="nav-item">
                                    <a href="#" class="nav-link toggle">{{ $link['text'] }} <i
                                            class="fal fa-plus"></i></a>
                                    <ul class="menu-dropdown">
                                        @foreach ($link['children'] as $level2)
                                            @php
                                                $l2Href = getHref($level2);
                                            @endphp

                                            <li class="nav-item">

                                                <a class="nav-link  @if (array_key_exists('children', $level2)) toggle @endif  @if(url() == $l2Href) active @endif"
                                                    href="{{ $l2Href }}">{{ $level2['text'] }} @if (array_key_exists('children', $level2))
                                                        <i class="fal fa-plus"></i>
                                                    @endif </a>
                                                @php
                                                    if (array_key_exists('children', $level2)) {
                                                        create_other_theme_menu($level2);
                                                    }
                                                @endphp
                                            </li>
                                        @endforeach

                                    </ul>
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </div>

                <div class="more-option mobile-item">
                    @if (!empty($currentLang))
                        <div class="item">



                            <div class="social-link mr-10" style="margin-left:22px">
                            @foreach ($socials as $social_link)
                                <a href="{{ $social_link->url }}" class="rounded-pill" target="_blank"><i
                                        class="{{ $social_link->icon }} mt-2"></i></a>
                            @endforeach


                            </div>
                        </div>
                    @endif

                    @auth
                       
                    @else
                       

                    @endauth

                    
                    @if ($bs->website_call_waiter == 1)
                    <div class="item">
                        <a data-toggle="modal" data-target="#callWaiterModal" class="btn-icon" target="_self" title="{{ __('Call Waiter') }}"
                        data-tooltip="tooltip" data-bs-placement="top" data-bs-original-title="{{ __('Call Waiter') }}">
                            <i class="fal fa-bell"></i>
                        </a>
                    </div>
                  @endif
                    @if ($bs->is_quote)
                        <div class="item">
                            <a href="{{ route('front.reservation') }}" class="btn btn-md btn-primary rounded-pill"
                                title="{{ __('Reservation') }}" target="_self">{{ __('Reservation') }}</a>
                        </div>
                    @endif
                </div>
            </nav>
        </div>
    </div>
</header>
<script>

</script>
