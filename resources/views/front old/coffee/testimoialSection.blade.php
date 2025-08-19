<section class="testimonial-area testimonial-2 ptb-100 "  style ="background-size:cover;background-repeat: no-repeat;background-image: url('{{ asset('assets/front/img/' . $be->testimonial_bg_img) }}')">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title title-center mb-50" data-aos="fade-up">
                    <h2 class="title mt-0 color-white">{{ convertUtf8($bs->testimonial_title) }}</h2>
                </div>
            </div>
            <div class="col-12">
                <div class="row justify-content-center" data-aos="fade-up">
                    @if ($testimonials->count() > 0)
                        <div class="col-lg-7">
                            <div class="swiper" id="testimonial-slider-3">
                                <div class="swiper-wrapper">
                                    @foreach ($testimonials as $testimonial)
                                        <div class="swiper-slide pb-25">
                                            <div class="slider-item text-center">
                                                <div class="quote">
                                                    <p class="text fs-3 mb-0 text-light " >
                                                    "
                                                        {{ convertUtf8($testimonial->comment) }}
                                                        "
                                                    </p>
                                                </div>
                                                <div class="client-info mt-20">
                                                    <h6 class="name mb-1 color-white">
                                                        {{ convertUtf8($testimonial->name) }}</h6>
                                                    <span
                                                        class="designation font-sm color-light">{{ convertUtf8($testimonial->rank) }}</span>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach

                                </div>
                            </div>
                            <div class="swiper testimonial-thumb mt-10">
                                <div class="swiper-wrapper">
                                    @foreach ($testimonials as $testimonial)
                                        <div class="swiper-slide">
                                            <div class="slider-item text-center">
                                                <div class="client-img">
                                                    <div class="lazy-container rounded-pill ratio ratio-1-1">
                                                        @if ($testimonial->image)
                                                            <img class="lazyload"
                                                                src="{{ asset('assets/front/img/testimonials/' . $testimonial->image) }}"
                                                                data-src="{{ asset('assets/front/img/testimonials/' . $testimonial->image) }}"
                                                                alt="Person Image">
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="swiper-pagination position-static" id="testimonial-slider-3-pagination"></div>
                        
                            <div data-aos="fade-up">
                <a href="https://www.tripadvisor.com.pe/Restaurant_Review-g294316-d2490636-Reviews-Rincon_Chami-Lima_Lima_Region.html#REVIEWS"
                  target="_blank" title="tripadvisor">
                               <img src="assets/front/img/tripadvisor.png"   alt="tripadvisor" style="max-width:60px;float:right"> 
                            </a>
                </div>
                        </div>
                    @else
                        {{ __('No Testimonial') }}
                    @endif
                   
                </div>
               
            </div>
            
        </div>
    </div>
</section>
