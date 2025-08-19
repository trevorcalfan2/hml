@extends('front.layout')

@section('pagename')
 - {{convertUtf8($page->name)}}
@endsection

@section('meta-keywords', "$page->meta_keywords")
@section('meta-description', "$page->meta_description")

@section('content')
  <!--====== PAGE TITLE PART START ======-->

  <section class="page-title-area d-flex align-items-center lazy" data-bg="{{asset('assets/front/img/'.$bs->breadcrumb)}}" style="height:390px !important">
   <div class="container">
       <div class="row">
           <div class="col-lg-12">
               <div class="page-title-item text-center" style="margin-bottom:-100px">
                   <h2 class="title">{{convertUtf8($page->title)}}</h2>
                   <nav aria-label="breadcrumb">
                       <ol class="breadcrumb">
                           <li class="breadcrumb-item"><a href="{{route('front.index')}}"><i class="flaticon-home"></i>{{__('Home')}}</a></li>
                           <li class="breadcrumb-item active" aria-current="page">{{convertUtf8($page->name)}}</li>
                       </ol>
                   </nav>
               </div>
           </div>
       </div>
   </div>
</section>

@if($page->name != 'Historia')
<section class="experience-area-3 pt-50 pb-90">
   <div class="container">
      <div class="col-lg-12 col-md-12 col-sm-12">

      @if($page->name == 'librodereclamaciones')
      <div class="mobile"><div class="elfsight-app-655344e6-a997-4463-aaeb-9c6102857456"></div></div>
      

      @endif

      @if($page->name == 'cookies policy')
      <div class="mobile">
        
      
                <h3 class="text-info text-center mb-4 text-dark">POLÍTICA DE PRIVACIDAD GENERAL</h3>
                <p>Por medio del presente documento, el Grupo de “Rincon Chami” pone a disposición de los usuarios su Política de Privacidad, la cual se encuentra en armonía con la normativa vigente sobre protección de Datos Personales (Ley N° 29733 y Decreto Supremo 003-2013-JUS). A continuación, se señalan las finalidades de tratamiento de la información que usted nos ha suministrado, quiénes son los encargados de tratarla, el tiempo de almacenamiento en nuestras Bases de Datos, las medidas de seguridad, y los medios para ejercer sus derechos como titular de los Datos Personales.</p>
                <p>
                <ol>
                    <li>
                        <b>¿Qué información recopilamos?</b>
                        <br><br>
                        <p>Recolectamos la siguiente información personal:</p>
                        <ul>
                            <li>Respecto de los datos personales de nuestros Clientes: nombre, apellidos, teléfono, correo electrónico y dirección.</li>
                            <li>Respecto a los datos personales de nuestros Usuarios Web: nombre, apellidos, teléfono, correo electrónico y dirección.</li>
                            <li>Respecto de los Datos de Quejas y Reclamos: nombres, apellidos, domicilio, teléfono y correo electrónico.</li>
                        </ul>
                        <br>
                        <p>Cabe resaltar que para crear un Usuario en nuestra Página Web únicamente hará falta que la persona consigne su correo electrónico y contraseña.</p>
                        <br>
                    </li>

                    <li>
                        <b>¿Por cuánto tiempo almacenamos su información?</b>
                        <br><br>
                        <p>Es importante señalar que el plazo de almacenamiento de datos es indeterminado. Sin embargo, en la política de privacidad correspondiente a cada sección se consigna esta precisión.</p>
                        <br>
                    </li>

                    <li>
                        <b>¿Cómo protegemos su información?</b>
                        <br><br>
                        <p>La Página Web de Rincon Chami ha adoptado todas las medidas técnicas, legales y organizacionales necesarias para garantizar la seguridad y el adecuado procesamiento de sus datos personales; así como para evitar cualquier manipulación indebida, pérdida accidental, destrucción o acceso no autorizado de terceros.</p>
                        <p>Asimismo, cumplimos con todas las medidas estrictamente necesarias respecto del flujo transfroterizo de datos, conforme al artículo 15 de la Ley N° 29733.</p>
                        <p>Hacemos de su conocimiento que su información no será comercializada, transferida ni compartida sin su autorización y para fines ajenos a los que se describen a continuación.</p>
                        <br>
                    </li>

                    <li>
                        <b>¿Con qué finalidad utilizamos su información?</b>
                        <br><br>
                        <p>Los datos personales que usted nos proporciona serán utilizados para las siguientes finalidades:</p>
                        <ul>
                            <li>
                                Respecto de los datos personales de nuestros Clientes/Usuarios Web:
                                <ul>
                                    <li>Procesar la compra realizada en virtud de la relación de consumo entablada con Rincon Chami.</li>
                                    <li>Establecer un canal de comunicación con Rincon Chami para informarle sobre el estado de su pedido u otra información relacionada a este.</li>
                                    <li>Incorpóralo en el historial de ventas de Rincon Chami para fines estadísticos e históricos.</li>
                                    <li>Establecer un medio de comunicación para atender sus consultas, preguntas, quejas, reclamos.</li>
                                    <li>Remitir promociones, beneficios, concursos, ofertas y, en general, publicidad sobre los productos y servicios de Rincon Chami.</li>
                                    <li>Obtener información de fuentes de acceso públicas y privadas para fines de perfilamiento.</li>
                                </ul>
                            </li>
                            <li>
                                Respecto de los Datos de Quejas y Reclamos:
                                <ul>
                                    <li>Establecer un medio de comunicación para dar respuesta a las solicitudes de gestión, quejas y reclamos que han sido registrado por el usuario y/o consumidor.</li>
                                    <li>Llevar un registro de las personas que presentan reclamos y quejas a través del Libro de Reclamaciones con el propósito de cumplir con las normas de protección al consumidor.</li>
                                </ul>
                            </li>
                        </ul>
                        <br>
                    </li>

                    <li>
                        <b>¿Quién tiene acceso a su información?</b>
                        <br><br>
                        <p>Usted nos autoriza a que podamos compartir y encargar el tratamiento de su información personal con terceros que nos prestan servicios para mejorar nuestras actividades. En estos casos, garantizará que el tratamiento de sus datos se limite a las finalidades antes autorizadas y que se mantenga confidencialidad y se implementen las medidas de seguridad adecuadas.</p>
                        <p>Cabe recalcar que la Página Web de Rincon Chami cumple con todas las políticas y regulaciones respecto del flujo transfronterizo de datos personales, conforme a la Ley de Protección de Datos Personales.</p>
                        <br>
                    </li>

                    <li>
                        <b>¿Cómo puede ejercer sus derechos como titular de Datos Personales?</b>
                        <br><br>
                        <p>Rincon Chami reconoce y garantiza el ejercicio de los derechos de acceso, rectificación, cancelación, oposición, información o revocación que por ley le asisten. Para ejercer los derechos antes mencionados podrá remitir un correo electrónico con el asunto "Derechos Datos Personales" a la siguiente dirección: admin@restauranterincocnhami.com.</p>
                        <p>
                            En dicho correo deberá consignar la siguiente información:
                            <ul>
                                <li>Nombre, apellidos, documento nacional de identidad, correo electrónico y dirección.</li>
                                <li>Indicar el tipo de solicitud que desea realizar: Acceso, Rectificación, Cancelación u Oposición. Asimismo, señalar claramente la información a la que desea acceder, rectificar, cancelar o respecto de la cual desea formular oposición.</li>
                                <li>Podrá adjuntar un documento en el cual desarrolle su solicitud. (formato pdf)</li>
                            </ul>
                        </p>
                        <p>En caso, considere que no ha sido atendido, podrá presentar una reclamación ante la Autoridad Nacional de Protección de Datos Personales, dirigiéndose a la Mesa de Partes del Ministerio de Justicia y Derechos Humanos ubicado en Calle Scipión Llona N° 350, Miraflores, Lima, Perú.</p>
                        <br>
                    </li>

                    <li>
                        <b>¿Cómo es el tratamiento de Cookies en nuestra Página Web?</b>
                        <br><br>
                        <p>La Página Web de Rincon Chami hace uso de cookies con el fin de mejorar el servicio brindado al cliente y/o usuario que hace uso de ella.</p>
                        <p>En este sitio web usamos las cookies para: a) asegurar que la página web puede funcionar correctamente y b) recopilar información estadística anónima, como qué páginas has visto o cuánto tiempo has estado en el sitio web.</p>
                        <p>La política de cookies que emplea nuestra Página Web cumple en rigurosidad con la normativa vigente de protección de datos (Ley N° 29733 y Decreto Supremo 003-2013-JUS).</p>
                        <br>
                    </li>

                    <li>
                        <b>Actualizaciones de la presente política de privacidad</b>
                        <br><br>
                        <p>Con motivo de la mejora continua de nuestros procesos, la Página Web de Rincon Chami podrá realizar correcciones y actualizaciones a esta Política de Privacidad. Por favor, verifique estos términos regularmente para consultar los cambios que puedan haber existido y de qué manera le pueden afectar.</p>
                        <br>
                    </li>

                </ol>
                </p>
            </div>
    
    
        
        
        
      

      @endif

      @if($page->name == 'benavides')
      

      <section class="about-area about-3  pb-20 parallax "  style="float: none !important">
        <div class="container "style="background-color: rgba(0, 0, 0, 0.05)" data-aos="fade-up">
            <div class="row align-items-center gx-xl-5" data-aos="fade-up"   >
                <div class="col-lg-7" data-aos="fade-up">
                        <div class="image  img-left " data-speed="0.1" data-revert="true">
                            <div id="map" data-aos="fade-up  "  >
                            <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=700&amp;height=400&amp;hl=es&amp;q=Av.%20Alfredo%20Benavides%202360%20Lima+(Av.%20Alfredo%20Benavides%202360)&amp;t=&amp;z=16&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
                            </div>
                        </div>
                </div>
                <div class="col-lg-5" data-aos="fade-up">
                <div class="content-title mb-40 ps-xl-2">
                        <h2 class="title mb-30 mt-30">
                            Local Benavides
                        </h2>
                        <div class="content-text  "  >
                            <p>
                            <i class="far fa-store"></i>&nbsp;&nbsp;Autoservicio y Recojo en Tienda
                            </p>
                            <p>
                            <i class="far fa-clock"></i> &nbsp;&nbsp;Atención de 8 a.m hasta las 6 p.m
                            </p>
                            <p>
                            <i class="fab fa-whatsapp" ></i>&nbsp;&nbsp; +51 959430582
                            </p>
                            <p>
                            <i class="far fa-phone"></i> &nbsp;&nbsp;4444511
                            </p>
                            <p>
                            <i class="far fa-map"></i>&nbsp;&nbsp; Av. Alfredo Benavides 2360, Frente al colegio Juana Alarco de Dammert
                            </p>
                        </div>
                                    <hr>
                        <div class="row align-items-center gx-xl-5" data-aos="fade-left"  >

                            <div class="col-lg-6">
                                <div class="tabs-btn  >
                                    <ul class="nav nav-pills d-flex justify-content-center" >
                                    <a href="https://bit.ly/cartachamibenavides" target="_blank" style="font-size:20px; background-color:#FF6000;width:100% " class="btn btn-md  m-1 text-light">Carta Benavides</a>
                    
                                    </ul>
                                </div>
                            </div>
                         
                            <div class="col-lg-6 " data-aos="fade-left"  >
                                <div class="image "  data-speed="0.1" data-revert="true"><a href="https://www.rappi.com.pe/restaurantes/51843-rinconchami" target="_blank">
                                    <img class="lazyload blur-up" src="{{ asset('assets/front/img/' . 'h-morado.png') }}" 
                                        data-src="{{ asset('assets/front/img/' . 'h-morado.png') }}" alt="Image" ></a>
                                </div>
                            </div>
                            
                        </div>

                    </div>
                </div>
            </div>
         </div>
        </section>


      @endif
      @if($page->name == 'Lince')
      

    <section class="about-area about-3  pb-20 parallax "  style="float: none !important">
        <div class="container "style="background-color: rgba(0, 0, 0, 0.05)" data-aos="fade-up">
            <div class="row align-items-center gx-xl-5" data-aos="fade-up"   >
                <div class="col-lg-7" data-aos="fade-up">
                        <div class="image  img-left " data-speed="0.1" data-revert="true">
                            <div id="map" data-aos="fade-up  "  >
                            <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=700&amp;height=400&amp;hl=es&amp;q=francisco%20de%20zela%201701%20Lima+(Jir%C3%B3n%20Francisco%20de%20Zela%201701)&amp;t=&amp;z=16&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
                            </div>
                        </div>
                </div>
                <div class="col-lg-5" data-aos="fade-up">
                <div class="content-title mb-40 ps-xl-2">
                        <h2 class="title mb-30 mt-30">
                            Local Lince
                        </h2>
                        <div class="content-text  " style="font-size:22px" >
                            <p>
                            <i class="far fa-store"></i>&nbsp;&nbsp;Autoservicio y Recojo en Tienda
                            </p>
                            <p>
                            <i class="far fa-clock"></i> &nbsp;&nbsp;Atención de 11 a.m hasta las 5 p.m
                            </p>
                            <p>
                            <i class="fab fa-whatsapp" ></i>&nbsp;&nbsp; +51 965178006
                            </p>
                            <p>
                            <i class="far fa-phone"></i> &nbsp;&nbsp;2963722
                            </p>
                            <p>
                            <i class="far fa-map"></i>&nbsp;&nbsp; Jr. Francisco de Zela 1701 - Lince
                            </p>
                        </div>
                        <hr>
                        <div class="row align-items-center gx-xl-5" data-aos="fade-left"  >

                            <div class="col-lg-6">
                                <div class="tabs-btn  >
                                    <ul class="nav nav-pills d-flex justify-content-center" >
                                    <a href="http://bit.ly/cartachamilince" target="_blank" style="font-size:20px; background-color:#FF6000;width:100% " class="btn btn-md  m-1 text-light">Carta Lince</a>

                                    </ul>
                                </div>
                            </div>

                            <div class="col-lg-6 " data-aos="fade-left"  >
                                <div class="image "  data-speed="0.1" data-revert="true"><a href="https://www.rappi.com.pe/restaurantes/52005-rinconchami" target="_blank">
                                    <img class="lazyload blur-up" src="{{ asset('assets/front/img/' . 'h-morado.png') }}" 
                                        data-src="{{ asset('assets/front/img/' . 'h-morado.png') }}" alt="Image" ></a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
         </div>
    </section>
                 






      @endif
         


      






      </div>
   </div>
</section>
@endif




@if($page->name == 'Historia')
<div class=" ">
<section class=" pb-90 pt-100 mobile">
   
        <div class="col-lg-12 col-md-12 col-sm-12 text-dark">
                <section class="about-area about-3 pb-60 parallax " >
                    <div class="container" >
                        <div class="row align-items-center gx-xl-5" data-aos="fade-left" >
                            <div class="col-lg-7 " data-aos="fade-left"  >
                                <div class="image   img-left "  data-speed="0.1" data-revert="true">
                                
                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/old/11.jpg') }}"
                                        data-src="{{ asset('assets/front/img/old/11.jpg') }}" alt="Image">
                                
                                </div>
                            </div>
                            <div class="col-lg-5" data-aos="fade-left" >
                                <div class="content-title mb-40 ps-xl-2">
                                    <h2 class="title mb-30 mt-30">
                                   ORIGEN
                                    </h2>
                                    <div class="content-text display-4"  style=font-size:42px !important">
                                        <span>"El Restaurante Rincón Chami 
                                        fue fundado en el año 1969 por la 
                                        Sra. Mercedes L. Y su hijo Sr. Armando E."
                                        </span>
                                    </div>
                                    <div class="btn-groups gap-25 mt-10" data-aos="fade-left"></div>

                                </div>
                            </div>
                        
                        </div>
                    
                    </div>
                    
                </section>

                <section class="about-area about-3  pb-40 parallax" >
                    <!-- Spacer -->
                    <div class="container" >
                        <div class="row align-items-center gx-xl-5" data-aos="fade-right">
                        
                            <div class="col-lg-4" data-aos="fade-right" >
                                <div class="content-title mb-40 " style="text-align:right" >

                                    <h2 class="title mb-30 mt-30">TRAYECTORIA</h2>
                                    <div class="content-text display-4"  style=font-size:42px !important">
                                            <span>
                                            En nuestros inicios distribuíamos comida a diferentes restaurantes del distrito de Miraflores
                                            </span>
                                            
                                    </div>
                                    <div class="btn-groups gap-25 mt-10" data-aos="fade-right">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 " data-aos="fade-right"  >
                                <div class="content-title mb-40 " >

                                    <div class="image   "  data-speed="0.1" data-revert="true">
                                                
                                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/old/3.jpg')}}" 
                                                        data-src="{{ asset('assets/front/img/old/3.jpg') }}" alt="Image">
                                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    </div>
                    
                </section>

                <section class="about-area about-3  pb-100 parallax "  >
                    <!-- Spacer -->
                    <div class="container" >
                        <div class="row align-items-center gx-xl-5" data-aos="fade-left"  
                    >
                            <div class="col-lg-8 " data-aos="fade-left"  >
                                <div class="image   img-left "  data-speed="0.1" data-revert="true">
                                
                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/old/2.jpg') }}" 
                                        data-src="{{ asset('assets/front/img/old/2.jpg') }}" alt="Image">
                                
                                </div>
                            </div>
                            <div class="col-lg-4" data-aos="fade-left" >
                                <div class="content-title mb-40 ps-xl-2">
                                    <h2 class="title mb-30 mt-30">
                                </h2>
                                <div class="content-text display-4"  style=font-size:42px !important">
                                        <span>
                                        tan grande fue la acogida de nuestra sazón que decidimos abrir las puertas de nuestra primera sede del Rincón Chami  
                            </span>
                                        
                                    </div>
                                

                                    <div class="btn-groups gap-25 mt-10" data-aos="fade-left">
                                    

                                    </div>
                                </div>
                            </div>
                        
                        </div>
                    
                    </div>
                    
                </section>

                <section class="about-area about-3  pb-40 parallax" >
                   <div class="container" >
                        <div class="row align-items-center gx-xl-5" data-aos="fade-right">
                        
                            <div class="col-lg-4" data-aos="fade-right" >
                                <div class="content-title mb-40 " style="text-align:right" >
                                    <h2 class="title mb-30 mt-30"> </h2>
                                    <div class="content-text display-4"  style=font-size:42px !important">
                                        <span>

                                        Ubicada en la Calle Esperanza 154 – Miraflores, la cual mantiene la decoración intacta de los años 70.                         
                                                       
                                    </span>
                                        
                                    </div>
                                    

                                    <div class="btn-groups gap-25 mt-10" data-aos="fade-right">
                                    
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 " data-aos="fade-right"  >
                                <div class="content-title mb-40 " >
                                    <div class="image "  data-speed="0.1" data-revert="true">
                                                
                                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/chami.jpeg')}}" 
                                                        data-src="{{ asset('assets/front/img/chami.jpeg') }}" alt="Image">
                                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    </div>
                    
                </section>

                <section class="about-area about-3  pb-100 parallax "  >
                    <!-- Spacer -->
                    <div class="container" >
                        <div class="row align-items-center gx-xl-5" data-aos="fade-left">
                            <div class="col-lg-7 " data-aos="fade-left"  >
                                <div class="image   img-left "  data-speed="0.1" data-revert="true">
                                
                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/front.jpg') }}" 
                                        data-src="{{ asset('assets/front/img/front.jpg') }}" alt="Image">
                                
                                </div>
                            </div>
                            <div class="col-lg-5" data-aos="fade-left" >
                                <div class="content-title mb-40 ps-xl-2">
                                    <h2 class="title mb-30 mt-30">ÉXITO
                                    </h2>
                                    <div class="content-text display-4"  style=font-size:42px !important">
                                        <span>

                                        Hoy en día somos una marca de renombre de la comida peruana en la ciudad de Lima - Perú.            
                                               
                                        </span>
                                    </div>
                                    <div class="btn-groups gap-25 mt-10" data-aos="fade-left">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="about-area about-3  pb-40 parallax" >
                    <!-- Spacer -->
                    <div class="container" >
                        <div class="row align-items-center gx-xl-5" data-aos="fade-right">
                        
                            <div class="col-lg-6" data-aos="fade-right" >
                                <div class="content-title mb-40 " style="text-align:right" >
                                    <h2 class="title mb-30 mt-30">
                                      
                                                            </h2>
                                                            <div class="content-text display-4"  style=font-size:42px !important">
                                        <span>

                                        Contamos con personal con mas de 50 años de servicio, así como también los hijos de los empleados antiguos nos acompañan hoy en día como parte de nuestro equipo.                      


                                    </div>
                                    

                                    <div class="btn-groups gap-25 mt-10" data-aos="fade-right">
                                    

                                    
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 " data-aos="fade-right"  >
                                <div class="content-title mb-40 " >

                                    <div class="image   "  data-speed="0.1" data-revert="true">
                                                
                                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/actual1.jpg')}}" 
                                                        data-src="{{ asset('assets/front/img/actual1.jpg') }}" alt="Image">
                                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    </div>
                    
                </section>



                <section class="about-area about-3  pb-100 parallax " >
                    <!-- Spacer -->
                    <div class="container" >
                        <div class="row align-items-center gx-xl-5" data-aos="fade-left">
                            <div class="col-lg-6 " data-aos="fade-left"  >
                                <div class="image   img-left "  data-speed="0.1" data-revert="true">
                                
                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/actual.jpeg') }}" 
                                        data-src="{{ asset('assets/front/img/actual.jpeg') }}" alt="Image">
                                
                                </div>
                            </div>
                            <div class="col-lg-6" data-aos="fade-left" >
                                <div class="content-title mb-40 ps-xl-2">
                                    <h2 class="title mb-30 mt-30">
                                    </h2>
                                    <div class="content-text display-4"  style=font-size:42px !important">
                                        <span>
                                        "Conformando así LA FAMILIA RINCON CHAMI."

                                               
                                        </span>
                                    </div>
                                    <div class="btn-groups gap-25 mt-10" data-aos="fade-left">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="about-area about-3  pb-40 parallax" >
                    <!-- Spacer -->
                    <div class="container" >
                        <div class="row align-items-center gx-xl-5" data-aos="fade-right">
                        
                            <div class="col-lg-5" data-aos="fade-right" >
                                <div class="content-title mb-40 " style="text-align:right" >
                                    <h2 class="title mb-30 mt-30">
                                      ACTUALIDAD
                                                            </h2>
                                                            <div class="content-text display-4"  style=font-size:42px !important">
                                        <span>

                                        Actualmente contamos con 3 sedes, 2 ubicadas en Miraflores y 1 en Lince.                                         


                                    </div>
                                    

                                    <div class="btn-groups gap-25 mt-10" data-aos="fade-right">
                                    

                                    
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7 " data-aos="fade-right"  >
                                
                                <div class="content-title mb-40 " >

                                    <div class="image  limg "  data-speed="0.1" data-revert="true">
                                                
                                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/main.jpg')}}" 
                                                        data-src="{{ asset('assets/front/img/main.jpg') }}" alt="Image">
                                                
                                    </div>
                                </div>
                                <div class="content-title mb-40 " >

                                    <div class="image  limg "  data-speed="0.1" data-revert="true">
                                                
                                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/ben.jpg')}}" 
                                                        data-src="{{ asset('assets/front/img/ben.jpg') }}" alt="Image">
                                                
                                    </div>
                                </div>
                                <div class="content-title mb-40 " >

                                    <div class="image  limg "  data-speed="0.1" data-revert="true">
                                                
                                                    <img class="lazyload blur-up" style="border-radius: 10px;" src="{{ asset('assets/front/img/lince last.jpg')}}" 
                                                        data-src="{{ asset('assets/front/img/lince last.jpg') }}" alt="Image">
                                                
                                    </div>
                                </div>


                            </div>
                        </div>
                    
                    </div>
                    
                </section>
        </div>

   
</section>
</div>


@endif


<!--====== EXPERIENCE PART ENDS ======-->
@endsection
