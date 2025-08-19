@extends('front.layout')

@section('content')
    <!--====== PAGE TITLE PART START ======-->

    <section class="page-title-area d-flex align-items-center lazy" data-bg="{{asset('assets/front/img/'.$bs->breadcrumb)}}" style="height:390px !important">
   <div class="container">
       <div class="row">
           <div class="col-lg-12">
               <div class="page-title-item text-center" style="margin-bottom:-100px">
                        <h2 class="title">{{convertUtf8($bs->gallery_title)}}</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('front.index')}}"><i class="flaticon-home"></i>{{__('Home')}}</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{__('Our Gallery')}}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--====== PAGE TITLE PART ENDS ======-->

    <!--====== GALLERY PART START ======-->

    <section class="gallery-area pt-130 pb-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section-title text-center">
                        <span>{{__('Photos Action')}} <img src="{{asset('assets/front/img/title-icon.png')}}" alt=""></span>
                        <h3 class="title">{{__('Our Awesome Gallery')}}</h3>
                    </div>
                </div>
            </div>
            <div class="elfsight-app-38bc4274-0b49-413e-a382-1873603f4eab"></div>
        </div>
    </section>

    <!--====== GALLERY PART ENDS ======-->
@endsection
