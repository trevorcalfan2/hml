
<!--FIRST CARD-->


<div class="container-fluid">




<section class="about-area about-3    mt-20  mb-20 d-flex justify-content-center" style="background-color: rgba(0, 0, 0, 0.05)" >

    <!-- Spacer -->
   

        <div class="image   "  data-speed="0.1" data-revert="true">
                           
                                    <img class="lazyload blur-up" src="{{ asset('assets/front/img/dailyseq.jpg')}}" 
                                        data-src="{{ asset('assets/front/img/dailyseq.jpg') }}" alt="Image">
                                  
                    </div>
    
    
</section>








<section class="about-area about-3  pb-20 parallax "  style="float: none !important">
    <!-- Spacer --> 
    
    <div class=""style="background-color: rgba(0, 0, 0, 0.05)" data-aos="fade-up">
        <div class="row align-items-center gx-xl-5" data-aos="fade-up"   >
            
        <div class="col-lg-7" data-aos="fade-up">
                <div class="image   " data-speed="0.1" data-revert="true">
                    
                
                    <div id="map" data-aos="fade-up   " >
                    <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=700&amp;height=400&amp;hl=es&amp;q=calle%20esperanza%20154%20Lima+(C.%20Esperanza%20154,%20Miraflores%2015074)&amp;t=&amp;z=16&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>                    </div>

                </div>
            </div>
        
        
        <div class="col-lg-5" data-aos="fade-up">



            <div class="content-title mb-40 ps-xl-2 pl-3">
                    <h2 class="title mb-30 mt-30" style="font-family: 'CG Times Bold'; ">
                       En el corazón de Miraflores
                    </h2>
                    <div class="content-text fs-3 " >
                    
                        <p>
                        <i class="far fa-clock"></i> &nbsp;&nbsp;Atención de 8 a.m a 8 p.m
                        </p>
                        <p>
                        <i class="fab fa-whatsapp" ></i>&nbsp;&nbsp;+51 931 278 037
                        </p>
                        <p>
                        <i class="far fa-phone"></i> &nbsp;&nbsp;4444511
                        </p>
                        <p>
                        <i class="far fa-map"></i>&nbsp;&nbsp; Calle Esperanza 154 - Miraflores
                        </p>
                        
                    </div>
                    @if ($intro_feature_items->count() > 0)
                    <div class="info-list mt-30">
                        <div class="row">
                            @foreach ($intro_feature_items as $item)
                            <div class="col-sm-4 item mb-30">
                                <div class="card">
                                    <div class="card-content">
                                        <span class="h3 font-medium mb-2"><span class="counter">{{ $item->intro_section_rating_point }}</span>{{ $item->intro_section_rating_symbol }}</span>
                                        <p class="card-text font-lg lh-1"> {{ $item->title }}</p>
                                    </div>
                                </div>
                            </div>
                            @endforeach

                            
                        </div>
                    </div>
                    @endif
<hr>
                    <div class="row align-items-center gx-xl-5" data-aos="fade-left"  >


                        <div class="col-lg-11" data-aos="fade-left"  >
                            <div class="image " data-speed="0.1" data-revert="true"><a href="https://www.rappi.com.pe/restaurantes/52373-rinconchami" target="_blank">
                                
                                <img class="lazyload blur-up " src="{{ asset('assets/front/img/' . 'h-naranja.png') }}" 
                                    data-src="{{ asset('assets/front/img/' . 'h-naranja.png') }}" alt="Image" ></a>
                            </div>
                        </div>

                    </div>
                </div>
                
            </div>
            
           
        </div>
       
    </div>
    
</section>


</div>




<div class="container-xxl" style="font-family: 'Satisfy', cursive;">



<section class="about-area about-3 pt-100 pb-60 parallax" >
    <!-- Spacer -->
    
        <div class="row align-items-center gx-xl-5" data-aos="fade-left"  
        >
            <div class="col-lg-6 " data-aos="fade-left"  >
                <div class="image   img-left "  data-speed="0.1" data-revert="true">
                    @if(!$bs->intro_main_image)
                    <img class="lazyload blur-up" src="{{ asset('assets/front/img/' . $bs->intro_main_image) }}" 
                        data-src="{{ asset('assets/front/img/' . $bs->intro_main_image) }}" alt="Image">
                    @endif
                    <img class="lazyload blur-up" src="{{ asset('assets/front/img/fbbg.jpeg') }}" 
                        data-src="{{ asset('assets/front/img/fbbg.jpeg') }}" alt="Image">
                </div>
            </div>
            <div class="col-lg-6" data-aos="fade-left" >
                <div class="content-title mb-40 ps-xl-2">
                    <h2 class="title mb-30 mt-30" style="font-family: 'CG Times Bold'; ">
                       TRADICIÓN DESDE HACE 54 AÑOS
                    </h2>
                    <div class="content-text fs-4" >
                        <p>
                            {{ convertUtf8($bs->intro_text) }}
                        </p>
                        
                    </div>
                    @if ($intro_feature_items->count() > 0)
                    <div class="info-list mt-30">
                        <div class="row">
                            @foreach ($intro_feature_items as $item)
                            <div class="col-sm-4 item mb-30">
                                <div class="card">
                                    <div class="card-content">
                                        <span class="h3 font-medium mb-2"><span class="counter">{{ $item->intro_section_rating_point }}</span>{{ $item->intro_section_rating_symbol }}</span>
                                        <p class="card-text font-lg lh-1"> {{ $item->title }}</p>
                                    </div>
                                </div>
                            </div>
                            @endforeach

                            
                        </div>
                    </div>
                    @endif

                    <div class="btn-groups gap-25 mt-10" data-aos="fade-left">
                      
                    </div>
                </div>
            </div>
           
        </div>
       
   
    
</section>

<!-- START OF CUSTOMIZATION-->




<section class="about-area about-3  pb-40 parallax" >
   

        <div class="row align-items-center gx-xl-5" data-aos="fade-right">
           
            <div class="col-lg-6" data-aos="fade-right" >
                <div class="content-title mb-40 " style="text-align:right" >
                    <h2 class="title mb-30 mt-30" style="font-family: 'CG Times Bold'; ">
                        LA RECETA ORIGINAL EN NUESTROS PLATOS
                                            </h2>
                    <div class="content-text fs-4" >
                        <p>
                            Por muchos años preparamos la receta original de cada plato criollo y estamos orgullosos de ofrecerte las mejores experiencias.
                        </p>
                        
                    </div>
                    @if ($intro_feature_items->count() > 0)
                    <div class="info-list mt-30">
                        <div class="row">
                            @foreach ($intro_feature_items as $item)
                            <div class="col-sm-4 item mb-30">
                                <div class="card">
                                    <div class="card-content">
                                        <span class="h3 font-medium mb-2"><span class="counter">{{ $item->intro_section_rating_point }}</span>{{ $item->intro_section_rating_symbol }}</span>
                                        <p class="card-text font-lg lh-1"> {{ $item->title }}</p>
                                    </div>
                                </div>
                            </div>
                            @endforeach

                            
                        </div>
                    </div>
                    @endif

                    <div class="btn-groups gap-25 mt-10" data-aos="fade-right">
                        @if($bs->intro_section_button_url)
                        <a href="{{$bs->intro_section_button_url}}" class="btn btn-lg btn-primary" title="{{ $bs->intro_section_button_text}}" target="_self" style="background-color:#{{ $bs->base_color }} !important; border: 2px solid #{{ $bs->base_color }} !important ;">{{ $bs->intro_section_button_text}}</a>
                        @endif

                        @if($bs->intro_video_link)

                        <a href="{{ $bs->intro_video_link }}" class="video-btn video-btn-text video-btn-sm youtube-popup" target="_self" title="Show Video">
                            <i class="fas fa-play"></i>
                            <span>{{ $bs->intro_section_video_button_text }}</span>
                        </a>
                        @endif

                    </div>
                </div>
            </div>
            <div class="col-lg-6 " data-aos="fade-right"  >
                <div class="content-title mb-40 " >
                    <div class="image   "  data-speed="0.1" data-revert="true">
                                    @if($bs->intro_main_image)
                                    <img class="lazyload blur-up" src="{{ asset('assets/front/img/edg.jpeg')}}" 
                                        data-src="{{ asset('assets/front/img/edg.jpeg') }}" alt="Image">
                                    @endif
                    </div>
              </div>
            </div>
        </div>
       
   
    
</section>






<section class="about-area about-3  pb-50 parallax" >
    <!-- Spacer -->
    
        <div class="row align-items-center gx-xl-5" data-aos="fade-left" 
       >
            <div class="col-lg-6 " data-aos="fade-left"  >
                <div class="image   float-right "  data-speed="0.1" data-revert="true">
                  
                    <img class="lazyload blur-up" src="{{ asset('assets/front/img/front.jpg') }}" 
                        data-src="{{ asset('assets/front/img/front.jpg') }}" alt="Image">
              
                </div>
            </div>
            <div class="col-lg-6" data-aos="fade-left" >
                <div class="content-title mb-40 ps-xl-2">
                    <h2 class="title mb-30 mt-30" style="font-family: 'CG Times Bold'; ">
                        AGRADABLE AMBIENTE DONDE GOZARÁS UNA MAGNÍFICA EXPERIENCIA                    </h2>
                    <div class="content-text fs-4" >
                        <p>
                           Nada como disfrutar nuestro banquete criollo en un formidable ambiente que se mantiene durante generaciones.
                        </p>
                        
                    </div>


                    <div class="btn-groups gap-25 mt-10" data-aos="fade-left">
                       

                    </div>
                </div>
            </div>
           
        </div>
       
    
    
</section>







<section class="about-area about-3  pb-120 parallax">



                <div class=" d-flex justify-content-center" data-aos="fade-left">
                   


                            
                <a href="https://rinconchami.pe/Historia/5/page" class="btn btn-md btn-primary rounded-pill mt-5 fs-5"
                                                title="Descubre Nuestra Historia" target="_self">Descubre Nuestra Historia</a>

                   
                </div>







 </section>


</div>












<section class="reservation-area bg_cover " >
               
    </section>