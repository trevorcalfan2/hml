<?php use Carbon\Carbon;
$carbon=Carbon::now();
 ?>


<section class="hero-banner hero-banner-3 parallax pb-100  carousel slide " data-ride="carousel" id="car"  >
    <div class="overlay"></div>
    <div class="carousel-inner">






<!--



    <div class="container-fluid carousel-item  active" >
        <div class="row align-items-center   gx-xl-5 ">
            <div class="col-lg-6 ">
                <div class="fluid-left ml-30">
                    <div class="banner-content mb-40">
                       
                            <h1 class="title color-white mb-30" data-aos="fade-up" data-aos-delay="100"
                                style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                :{{ $be->hero_section_bold_text_font_size }}px !important">
                               Pide Ahora en "Rappi"
                            </h1>
                        

                       
                            <p class="text color-light" data-aos="fade-up" data-aos-delay="100"
                                style="font-weight:100 !important;color: #{{ $be->hero_section_text_color }} !important; font-size :{{ $be->hero_section_text_font_size }}px !important">
                                Disfruta de nuestros mejores platos en Rappi y obten grandes descuentos!
                                
                            </p>
                         
                     

                        <div class="cta-btn mt-40 btn-groups" data-aos="fade-up" data-aos-delay="250">
                           
                                <a href="https://www.rappi.com.pe/restaurantes/52373-rinconchami" class="btn btn-lg btn-primary"
                                    title="{{ convertUtf8($be->hero_section_button_text) }} More" target="_blank"
                                    style="background-color: #{{ $be->hero_section_button_two_color }}; font-size: {{ $be->hero_section_button2_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_two_color }}">
                                    Pedir Ahora</a>
                         

                       
                                <a href="{{ $be->hero_section_button2_url }}" class="btn btn-lg btn-outline"
                                    title=" {{ $be->hero_section_button2_text }}" target="_self"
                                    style="background-color: #{{ $be->hero_section_button_two_color }}; font-size: {{ $be->hero_section_button2_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_two_color }}">{{ $be->hero_section_button2_text }}</a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6" data-aos="fade-left">
                <div class="banner-image mb-40 parallax-img "  data-speed="0.1" data-revert="true">
                    <img class="lazyload blur-up mobile ml-80"style="max-width:400px !important"
                        src="{{ asset('assets/front/img/rappi-mochila.png') }}"
                        data-src="{{ asset('assets/front/img/rappi-mochila.png') }}"
                        alt="Banner side Image">

                </div>
            </div>
        </div>


    </div>

-->




    
@if ($carbon->format('l') == 'Tuesday' || $carbon->format('l') == 'Sunday')



@if ($carbon->format('l') == 'Tuesday')
<div class="container-fluid carousel-item active"  >
@endif
@if ($carbon->format('l') == 'Sunday')
<div class="container-fluid carousel-item"  >
@endif
  
        <div class="row align-items-center   gx-xl-5 "  >
            <div class="col-lg-5" style="margin-right:-20px">
                <div class="fluid-left ml-30" >
                    <div class="banner-content mb-40 " >



                    @if ($carbon->format('l') == 'Tuesday')
                                        <h1 class="title color-white mb-10" data-aos="fade-up" data-aos-delay="100"
                                            style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                            :{{ $be->hero_section_bold_text_font_size }}px !important">
                                            Martes                           
                                        
                                        </h1>
                                    @endif
                            @if ($carbon->format('l') == 'Sunday')
                                <h1 class="title color-white mb-10" data-aos="fade-up" data-aos-delay="100"
                                    style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                    :{{ $be->hero_section_bold_text_font_size }}px !important">
                                    Domingo                           
                                
                                </h1>
                            @endif


                    
                            <h3 class="text color-light" data-aos="fade-up" data-aos-delay="100"
                                style="color: #{{ $be->hero_section_text_color }} !important;">
                                Arroz con Pato
                            </h3>
                            <h4 class="text color-light font-italic" data-aos="fade-up" data-aos-delay="50"
                                style=" color: #{{ $be->hero_section_text_color }} !important;">
                                "Exclusivo en los locales de Miraflores y Benavides"
</h4>

                        <div class="cta-btn mt-40 btn-groups" data-aos="fade-up" data-aos-delay="100">
                        
                                <a href="https://goo.gl/maps/n11b1A1fq9rzVe8M7" target="_blank" class="btn btn-lg btn-primary"
                                    title="{{ convertUtf8($be->hero_section_button_text) }} More" 
                                    style="background-color: #{{ $be->hero_section_button_color }}; font-size: {{ $be->hero_section_button_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_color }}">Ubícanos</a>
                           

                            
                                <a href="https://www.rappi.com.pe/restaurantes/52373-rinconchami" class="btn btn-lg btn-outline"
                                    title=" {{ $be->hero_section_button2_text }}" target="_blank"
                                    style="background-color: #{{ $be->hero_section_button_two_color }}; font-size: {{ $be->hero_section_button2_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_two_color }}">Pídelo</a>
                          
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7" data-aos="fade-left">
                <div class="banner-image mb-40 parallax-img "  data-speed="0.1" data-revert="true">
                    <img class="lazyload blur-up mobile ml-80"style="max-width:680px"
                        src="{{ asset('assets/front/img/pato.png') }}"
                        data-src="{{ asset('assets/front/img/pato.png') }}"
                        alt="Banner side Image">

                </div>
            </div>
        </div>



    </div>



@endif


@if ($carbon->format('l') == 'Monday' || $carbon->format('l') == 'Friday')

    <div class="container-fluid carousel-item active"  >
        <div class="row align-items-center   gx-xl-5 "  >
            <div class="col-lg-5" style="margin-right:-20px">
                <div class="fluid-left ml-30" >
                    <div class="banner-content mb-40 " >
                    
                    @if ($carbon->format('l') == 'Monday')
                                        <h1 class="title color-white mb-10" data-aos="fade-up" data-aos-delay="100"
                                            style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                            :{{ $be->hero_section_bold_text_font_size }}px !important">
                                            Lunes                           
                                        
                                        </h1>
                                    @endif
                            @if ($carbon->format('l') == 'Friday')
                                <h1 class="title color-white mb-10" data-aos="fade-up" data-aos-delay="100"
                                    style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                    :{{ $be->hero_section_bold_text_font_size }}px !important">
                                    Viernes                           
                                
                                </h1>
                            @endif


                    
                            <h3 class="text color-light" data-aos="fade-up" data-aos-delay="100"
                                style="color: #{{ $be->hero_section_text_color }} !important;">
                               Seco de Cordero

                            </h3>
                            <h4 class="text color-light font-italic" data-aos="fade-up" data-aos-delay="50"
                                style=" color: #{{ $be->hero_section_text_color }} !important;">
                                "Exclusivo en el local de Miraflores"
</h4>

                        <div class="cta-btn mt-40 btn-groups" data-aos="fade-up" data-aos-delay="100">
                        
                                <a href="https://goo.gl/maps/n11b1A1fq9rzVe8M7" target="_blank" class="btn btn-lg btn-primary"
                                    title="{{ convertUtf8($be->hero_section_button_text) }} More" 
                                    style="background-color: #{{ $be->hero_section_button_color }}; font-size: {{ $be->hero_section_button_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_color }}">Ubícanos</a>
                        

                            
                                <a href="https://www.rappi.com.pe/restaurantes/52373-rinconchami" class="btn btn-lg btn-outline"
                                    title=" {{ $be->hero_section_button2_text }}" target="_blank"
                                    style="background-color: #{{ $be->hero_section_button_two_color }}; font-size: {{ $be->hero_section_button2_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_two_color }}">Pídelo</a>
                        
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7" data-aos="fade-left">
                <div class="banner-image mb-40 parallax-img "  data-speed="0.1" data-revert="true">
                    <img class="lazyload blur-up mobile ml-80"style="max-width:700px !important"
                        src="{{ asset('assets/front/img/seco.png') }}"
                        data-src="{{ asset('assets/front/img/seco.png') }}"
                        alt="Banner side Image">

                </div>
            </div>
        </div>



    </div>



@endif

@if ($carbon->format('l') == 'Thursday')

    <div class="container-fluid carousel-item active"  >
        <div class="row align-items-center   gx-xl-5 "  >
            <div class="col-lg-5" style="margin-right:-20px">
                <div class="fluid-left ml-30" >
                    <div class="banner-content mb-40 " >
                    
                  
                          
                            <h1 class="title color-white mb-10" data-aos="fade-up" data-aos-delay="100"
                                style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                :{{ $be->hero_section_bold_text_font_size }}px !important">
                                Jueves                           
                            
                            </h1>
                          


                    
                            <h3 class="text color-light" data-aos="fade-up" data-aos-delay="100"
                                style="color: #{{ $be->hero_section_text_color }} !important;">
                               Estofado de Lengua

                            </h3>
                            <h4 class="text color-light font-italic" data-aos="fade-up" data-aos-delay="50"
                                style=" color: #{{ $be->hero_section_text_color }} !important;">
                                "Exclusivo en el local de Miraflores"
</h4>

                        <div class="cta-btn mt-40 btn-groups" data-aos="fade-up" data-aos-delay="100">
                        
                                <a href="https://goo.gl/maps/n11b1A1fq9rzVe8M7" target="_blank" class="btn btn-lg btn-primary"
                                    title="{{ convertUtf8($be->hero_section_button_text) }} More" 
                                    style="background-color: #{{ $be->hero_section_button_color }}; font-size: {{ $be->hero_section_button_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_color }}">Ubícanos</a>
                        

                            
                                <a href="https://www.rappi.com.pe/restaurantes/52373-rinconchami" class="btn btn-lg btn-outline"
                                    title=" {{ $be->hero_section_button2_text }}" target="_blank"
                                    style="background-color: #{{ $be->hero_section_button_two_color }}; font-size: {{ $be->hero_section_button2_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_two_color }}">Pídelo</a>
                        
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7" data-aos="fade-left">
                <div class="banner-image mb-40 parallax-img "  data-speed="0.1" data-revert="true">
                    <img class="lazyload blur-up mobile ml-80" style="max-width:700px"
                        src="{{ asset('assets/front/img/lengua.png') }}"
                        data-src="{{ asset('assets/front/img/lengua.png') }}"
                        alt="Banner side Image">

                </div>
            </div>
        </div>



    </div>



@endif


@if ($carbon->format('l') == 'Wednesday')

    <div class="container-fluid carousel-item active"  >
        <div class="row align-items-center   gx-xl-5 "  >
            <div class="col-lg-5" style="margin-right:-20px">
                <div class="fluid-left ml-30" >
                    <div class="banner-content mb-40 " >
                    
                   
                           
                                <h1 class="title color-white mb-10" data-aos="fade-up" data-aos-delay="100"
                                    style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                    :{{ $be->hero_section_bold_text_font_size }}px !important">
                                    Miércoles                           
                                
                                </h1>
                       


                    
                            <h3 class="text color-light" data-aos="fade-up" data-aos-delay="100"
                                style="color: #{{ $be->hero_section_text_color }} !important;">
                              Sancochado

                            </h3>
                            <h4 class="text color-light font-italic" data-aos="fade-up" data-aos-delay="50"
                                style=" color: #{{ $be->hero_section_text_color }} !important;">
                                "Exclusivo en los locales de Miraflores y Benavides"
</h4>

                        <div class="cta-btn mt-40 btn-groups" data-aos="fade-up" data-aos-delay="100">
                        
                                <a href="https://goo.gl/maps/n11b1A1fq9rzVe8M7" target="_blank" class="btn btn-lg btn-primary"
                                    title="{{ convertUtf8($be->hero_section_button_text) }} More" 
                                    style="background-color: #{{ $be->hero_section_button_color }}; font-size: {{ $be->hero_section_button_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_color }}">Ubícanos</a>
                        

                            
                                <a href="https://www.rappi.com.pe/restaurantes/52373-rinconchami" class="btn btn-lg btn-outline"
                                    title=" {{ $be->hero_section_button2_text }}" target="_blank"
                                    style="background-color: #{{ $be->hero_section_button_two_color }}; font-size: {{ $be->hero_section_button2_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_two_color }}">Pídelo</a>
                        
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7" data-aos="fade-left">
                <div class="banner-image mb-40 parallax-img "  data-speed="0.1" data-revert="true">
                    <img class="lazyload blur-up mobile ml-80"style="max-width:780px "
                        src="{{ asset('assets/front/img/sancochado.png') }}"
                        data-src="{{ asset('assets/front/img/sancochado.png') }}"
                        alt="Banner side Image">

                </div>
            </div>
        </div>



    </div>



@endif



@if ($carbon->format('l') == 'Sunday' || $carbon->format('l') == 'Saturday')

    <div class="container-fluid carousel-item active"  >
        <div class="row align-items-center   gx-xl-5 "  >
            <div class="col-lg-5" style="margin-right:-20px">
                <div class="fluid-left ml-30" >
                    <div class="banner-content mb-40 " >
                    

                            @if ($carbon->format('l') == 'Saturday')
                                        <h1 class="title color-white mb-10" data-aos="fade-up" data-aos-delay="100"
                                            style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                            :{{ $be->hero_section_bold_text_font_size }}px !important">
                                            Sábado                           
                                        
                                        </h1>
                                    @endif
                            @if ($carbon->format('l') == 'Sunday')
                                <h1 class="title color-white mb-10" data-aos="fade-up" data-aos-delay="100"
                                    style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                    :{{ $be->hero_section_bold_text_font_size }}px !important">
                                    Domingo                           
                                
                                </h1>
                            @endif


                    
                            <h3 class="text color-light" data-aos="fade-up" data-aos-delay="100"
                                style="color: #{{ $be->hero_section_text_color }} !important;">
                                Chupe de Camarones

                            </h3>
                            <h4 class="text color-light font-italic" data-aos="fade-up" data-aos-delay="50"
                                style=" color: #{{ $be->hero_section_text_color }} !important;">
                                "Exclusivo en los locales de Miraflores y Benavides"
</h4>

                        <div class="cta-btn mt-40 btn-groups" data-aos="fade-up" data-aos-delay="100">
                        
                                <a href="https://goo.gl/maps/n11b1A1fq9rzVe8M7" target="_blank" class="btn btn-lg btn-primary"
                                    title="{{ convertUtf8($be->hero_section_button_text) }} More" 
                                    style="background-color: #{{ $be->hero_section_button_color }}; font-size: {{ $be->hero_section_button_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_color }}">Ubícanos</a>
                        

                            
                                <a href="https://www.rappi.com.pe/restaurantes/52373-rinconchami" class="btn btn-lg btn-outline"
                                    title=" {{ $be->hero_section_button2_text }}" target="_blank"
                                    style="background-color: #{{ $be->hero_section_button_two_color }}; font-size: {{ $be->hero_section_button2_text_font_size }}px; border:1px solid #{{ $be->hero_section_button_two_color }}">Pídelo</a>
                        
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7" data-aos="fade-left">
                <div class="banner-image mb-40 parallax-img "  data-speed="0.1" data-revert="true">
                    <img class="lazyload blur-up mobile ml-80"style="max-width:800px"
                        src="{{ asset('assets/front/img/camaron.png') }}"
                        data-src="{{ asset('assets/front/img/camaron.png') }}"
                        alt="Banner side Image">

                </div>
            </div>
        </div>



    </div>



@endif


<div class="container-fluid carousel-item  " >
        <div class="row align-items-center   gx-xl-5 ">
            <div class="col-lg-4 ">
                <div class="fluid-left ml-30">
                    <div class="banner-content mb-40">
                       
                            <h1 class="title color-white mb-30" data-aos="fade-up" data-aos-delay="100"
                                style="color: #{{ $be->hero_section_bold_text_color }} !important; font-size
                                :{{ $be->hero_section_bold_text_font_size }}px !important">
                             Nueva sede en Lince!
                            </h1>
                        

                       
                            <h3 class="text color-light" data-aos="fade-up" data-aos-delay="100"
                                style="color: #{{ $be->hero_section_text_color }} !important; font-size :{{ $be->hero_section_text_font_size }}px !important">
Jr. Francisco de Zela 1701 - Lince                                
</h3>
                         
                     

                       
                    </div>
                </div>
            </div>
            <div class="col-lg-8" data-aos="fade-left">
                <div class="banner-image mb-40 parallax-img "  data-speed="0.1" data-revert="true">
                    <img class="lazyload blur-up mobile ml-80" style="max-width:680px; border-top-right-radius: 40px;
border-bottom-left-radius: 40px;"
                        src="{{ asset('assets/front/img/lince.jpg') }}"
                        data-src="{{ asset('assets/front/img/lince.jpg') }}"
                        alt="Banner side Image">

                </div>
            </div>
        </div>


    </div>


    


    </div>  
    <a class="carousel-control-prev" href="#car" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#car" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
    @if ($be->hero_bg)
        <div class="bg-img"   data-bg-image="{{ $be->hero_bg ? asset('assets/front/img/' . $be->hero_bg) : '' }}" 
        ></div>
    @endif
    <!-- Spacer -->
    <div class="spacer pb-120"></div>
    <!-- Bg shape -->
    @if ($be->hero_shape_img)
        <div class="bg-shape h-auto">
            <img class="lazyload"
                data-src="{{ $be->hero_shape_img ? asset('assets/front/img/' . $be->hero_shape_img) : '' }}"
                alt="Bg Shape">
        </div>
    @endif
</section>
