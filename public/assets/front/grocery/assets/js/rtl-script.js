!(function ($) {
    "use strict";

    /*============================================
        Sticky header
    ============================================*/
    $(window).on("scroll", function () {
        var header = $(".header-area");
        // If window scroll down .is-sticky class will added to header
        if ($(window).scrollTop() >= 200) {
            header.addClass("is-sticky");
        } else {
            header.removeClass("is-sticky");
        }
    });


    /*============================================
            Mobile menu
        ============================================*/
    // var mobileMenu = function () {
    //     // Variables
    //     var body = $("body"),
    //         mainNavbar = $(".main-navbar"),
    //         mobileNavbar = $(".mobile-menu"),
    //         cloneInto = $(".mobile-menu-wrapper"),
    //         cloneItem = $(".mobile-item"),
    //         menuToggler = $(".menu-toggler"),
    //         offCanvasMenu = $("#offcanvasMenu")

    //     menuToggler.on("click", function () {
    //         $(this).toggleClass("active");
    //         body.toggleClass("mobile-menu-active")
    //     })

    //     mainNavbar.find(cloneItem).clone(!0).appendTo(cloneInto);

    //     if (offCanvasMenu) {
    //         body.find(offCanvasMenu).clone(!0).appendTo(cloneInto);
    //     }

    //     mobileNavbar.find("li").each(function (index) {
    //         var toggleBtn = $(this).children(".toggle")
    //         toggleBtn.on("click", function (e) {
    //             $(this)
    //                 .parent("li")
    //                 .children("ul")
    //                 .stop(true, true)
    //                 .slideToggle(350);
    //             $(this).parent("li").toggleClass("show");
    //         })
    //     })

    //     // check browser width in real-time
    //     var checkBreakpoint = function () {
    //         var winWidth = window.innerWidth;
    //         if (winWidth <= 1199) {
    //             mainNavbar.hide();
    //             mobileNavbar.show()
    //         } else {
    //             mainNavbar.show();
    //             mobileNavbar.hide()
    //         }
    //     }
    //     checkBreakpoint();

    //     $(window).on('resize', function () {
    //         checkBreakpoint();
    //     });
    // }
    // mobileMenu();


    // /*============================================
    //         Navlink active class
    //     ============================================*/
    // var a = $("#mainMenu .nav-link"),
    //     c = window.location;

    // for (var i = 0; i < a.length; i++) {
    //     const el = a[i];

    //     if (el.href == c) {
    //         el.classList.add("active");
    //     }
    // }


    /*============================================
        Image to background image
    ============================================*/
    var bgImage = $(".bg-img")
    bgImage.each(function () {
        var el = $(this),
            src = el.attr("data-bg-image");

        el.css({
            "background-image": "url(" + src + ")",
            "display": "block",
            "background-repeat": "no-repeat"
        });
    });


    /*============================================
        Tabs mouse hover animation
    ============================================*/
    $("[data-hover='fancyHover']").mouseHover();


    /*============================================
        Sliders
    ============================================*/
    // Category Slider all
    $(".category-slider").each(function () {
        var id = $(this).attr("id");
        var slidePerView = $(this).data("slides-per-view");
        var loops = $(this).data("swiper-loop");
        var sliderId = "#" + id;

        // console.log(slidePerView);

        var swiper = new Swiper(sliderId, {
            loop: loops,
            spaceBetween: 24,
            speed: 1000,
            autoplay: {
                delay: 3000,
            },
            slidesPerView: slidePerView,
            pagination: true,

            pagination: {
                el: sliderId + "-pagination",
                clickable: true,
            },

            // Navigation arrows
            navigation: {
                nextEl: sliderId + "-next",
                prevEl: sliderId + "-prev",
            },

            breakpoints: {
                320: {
                    slidesPerView: 1
                },
                576: {
                    slidesPerView: 2
                },
                992: {
                    slidesPerView: 3
                },
                1440: {
                    slidesPerView: slidePerView
                },
            }
        })
    })

    // Testimonial Slider
    var testimonialSlider1 = new Swiper("#testimonial-slider-1", {
        speed: 1000,
        slidesPerView: 1,
        loop: true,
        grabCursor: true,
        effect: "creative",
        autoplay: {
            delay: 3000,
        },

        creativeEffect: {
            prev: {
                shadow: true,
                translate: [0, 0, -100],
            },
            next: {
                translate: ["100%", 0, 0],
            },
        },

        // Pagination bullets
        pagination: {
            el: "#testimonial-slider-1-pagination",
            clickable: true,
        },
    });
    var testimonialSlider2 = new Swiper("#testimonial-slider-2", {
        speed: 1000,
        slidesPerView: 3,
        spaceBetween: 30,
        loop: true,
        grabCursor: true,
        autoplay: {
            delay: 3000,
        },

        // Pagination bullets
        pagination: {
            el: "#testimonial-slider-2-pagination",
            clickable: true,
        },

        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1
            },
            // when window width is >= 576px
            768: {
                slidesPerView: 2
            },
            // when window width is >= 768px
            992: {
                slidesPerView: 3
            },
        }
    });
    var testimonialSlider3 = new Swiper("#testimonial-slider-3", {
        speed: 1000,
        loop: true,
        slidesPerView: 'auto',
        autoplay: {
            delay: 3000,
        },
    });
    // Testimonial Slider 3 Thumb
    var testimonialThumb = new Swiper(".testimonial-thumb", {
        speed: 1000,
        loop: true,
        centeredSlides: true,
        autoplay: {
            delay: 3000,
        },
        effect: 'coverflow',
        slidesPerView: 5,
        coverflowEffect: {
            rotate: 0,
            depth: 400,
            slideShadows: false
        },
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 2,
            },
            // when window width is >= 576px
            768: {
                slidesPerView: 4
            },
            // when window width is >= 768px
            992: {
                slidesPerView: 5
            },
        }
    });
    // Sync testimonial slider 1
    testimonialSlider3.controller.control = testimonialThumb;
    testimonialThumb.controller.control = testimonialSlider3;

    var testimonialSlider4 = new Swiper("#testimonial-slider-4", {
        speed: 1000,
        slidesPerView: 2,
        spaceBetween: 30,
        loop: true,
        grabCursor: true,
        autoplay: {
            delay: 3000,
        },

        // Pagination bullets
        pagination: {
            el: "#testimonial-slider-4-pagination",
            clickable: true,
        },

        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1
            },
            // when window width is >= 576px
            768: {
                slidesPerView: 2
            }
        }
    });
    var testimonialSlider5 = new Swiper("#testimonial-slider-5", {
        speed: 1000,
        slidesPerView: 2,
        spaceBetween: 15,
        loop: true,
        grabCursor: true,
        autoplay: {
            delay: 3000,
        },

        // Pagination bullets
        pagination: {
            el: "#testimonial-slider-5-pagination",
            clickable: true,
        },

        breakpoints: {
            320: {
                slidesPerView: 1
            },
            576: {
                slidesPerView: 2
            }
        }
    });

    // Gallery Slider
    var gallerySlider = new Swiper(".gallery-slider", {
        speed: 1200,
        loop: true,
        centerSlide: true,
        spaceBetween: 2,
        slidesPerView: 3,
        autoplay: {
            delay: 3000,
        },

        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1
            },
            // when window width is >= 576px
            576: {
                slidesPerView: 2
            },
            // when window width is >= 768px
            992: {
                slidesPerView: 3
            },
        }

    });

    // Stop slider autoplay
    $(document).ready(function () {

        if ($(".swiper").length) {
            var mySwiper = document.querySelector(".swiper").swiper

            $(".swiper").mouseenter(function () {
                mySwiper.autoplay.stop();
            });

            $(".swiper").mouseleave(function () {
                mySwiper.autoplay.start();
            });
        }
    });


    /*============================================
        Parallax image
    ============================================*/
    var parallax = $('.parallax');

    parallax.each(function () {
        $(this).mousemove(function (e) {
            var wx = $(window).width();
            var wy = $(window).height();
            var x = e.pageX - this.offsetLeft;
            var y = e.pageY - this.offsetTop;
            var newx = x - wx / 2;
            var newy = y - wy / 2;

            var parallaxChild = $(this).find('.parallax-img');
            parallaxChild.each(function () {
                var speed = $(this).attr('data-speed');
                if ($(this).attr('data-revert')) speed *= -.2;
                TweenMax.to($(this), 1, {
                    x: (1 - newx * speed),
                    y: (1 - newy * speed)
                });
            });
        });
    })


    /*============================================
        Odometer
    ============================================*/
    $(".counter").counterUp({
        delay: 10,
        time: 1000
    });


    /*============================================
        Youtube popup
    ============================================*/
    $(".youtube-popup").magnificPopup({
        disableOn: 300,
        type: "iframe",
        mainClass: "mfp-fade",
        removalDelay: 160,
        preloader: false,
        fixedContentPos: false,
    })


    /*============================================
        Go to top
    ============================================*/
    $(window).on("scroll", function () {
        // If window scroll down .active class will added to go-top
        var goTop = $(".go-top");

        if ($(window).scrollTop() >= 200) {
            goTop.addClass("active");
        } else {
            goTop.removeClass("active")
        }
    })
    $(".go-top").on("click", function (e) {
        $("html, body").animate({
            scrollTop: 0,
        }, 0);
    });


    /*============================================
        Lazyload image
    ============================================*/
    var lazyLoad = function () {
        window.lazySizesConfig = window.lazySizesConfig || {};
        window.lazySizesConfig.loadMode = 2;
        lazySizesConfig.preloadAfterLoad = true;

        var lazyContainer = $(".lazy-container");

        if (lazyContainer.children(".lazyloaded")) {
            lazyContainer.addClass("lazy-active")
        } else {
            lazyContainer.removeClass("lazy-active")
        }
    }


    /*============================================
        Nice select
    ============================================*/
    $(".niceselect").niceSelect();

    var selectList = $(".nice-select .list")
    $(".nice-select .list").each(function () {
        var list = $(this).children();
        if (list.length > 5) {
            $(this).css({
                "height": "160px",
                "overflow-y": "scroll"
            })
        }
    })


    /*============================================
        Footer date
    ============================================*/
    var date = new Date().getFullYear();
    $("#footerDate").text(date);


    /*============================================
        Document on ready
    ============================================*/
    $(document).ready(function () {
        lazyLoad()
    })

})(jQuery);

$(window).on("load", function () {
    const delay = 1000;
    /*============================================
        Preloader
    ============================================*/
    $("#preLoader").delay(delay).fadeOut();

    /*============================================
        Aos animation
    ============================================*/
    var aosAnimation = function () {
        AOS.init({
            easing: "ease",
            duration: 1200,
            once: true,
            offset: 60,
            disable: 'mobile'
        });
    }
    if ($("#preLoader")) {
        setTimeout(() => {
            aosAnimation()
        }, delay);
    } else {
        aosAnimation();
    }
})