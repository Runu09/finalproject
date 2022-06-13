    $(".landing_slider").slick({
        arrows: true,
        dots: false,
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3
                }
            },
            {
                breakpoint:991,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 420,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });


    $('.slide-center-3').slick({
        centerMode: true,
        centerPadding: '200px',
        slidesToShow: 1,
        dots: false,
        responsive: [
            {
                breakpoint: 1199,
                settings: {
                    centerPadding: '150px'
                }
            },
            {
                breakpoint: 767,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '50px',
                    slidesToShow: 1
                }
            },
            {
                breakpoint: 576,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '30px',
                    slidesToShow: 1
                }
            }
        ]
    });
    

    $('ul.tabs li').click(function () {
        var tab_id = $(this).attr('data-tab');

        $('ul.tabs li').removeClass('current');
        $('.tab-content').removeClass('current');

        $(this).addClass('current');
        $("#" + tab_id).addClass('current');
    });

    $(".bg-top").parent().addClass('b-top'); // background postion top
    $(".bg-bottom").parent().addClass('b-bottom'); // background postion bottom
    $(".bg-center").parent().addClass('b-center'); // background postion center
    $(".bg-left").parent().addClass('b-left'); // background postion left
    $(".bg-right").parent().addClass('b-right'); // background postion right
    $(".bg_size_content").parent().addClass('b_size_content'); // background size content
    $(".bg-img").parent().addClass('bg-size');
    $(".bg-img.blur-up" ).parent().addClass('blur-up lazyload');
    $('.bg-img').each(function () {

        var el = $(this),
            src = el.attr('src'),
            parent = el.parent();


        parent.css({
            'background-image': 'url(' + src + ')',
            'background-size': 'cover',
            'background-position': 'center',
            'background-repeat': 'no-repeat',
            'display': 'block'
        });

        el.hide();
    });

    $(window).on('scroll', function () {
        if ($(this).scrollTop() > 600) {
            $('.tap-top').addClass('top');
        } else {
            $('.tap-top').removeClass('top');
        }
    });

    $('.tap-top').on('click', function () {
        $("html, body").animate({
            scrollTop: 0
        }, 600);
        return false;
    });


    $( function() {
        // tooltip
      function onHoverToggleTooltip( e ) {
          var 	$this	= $( this ),
              title	= $this.attr( 'title' ),
              type	= e.type,
              offset 	= $this.offset(),
              xOffset = e.pageX - offset.left + 10,
              yOffset = e.pageY - offset.top + 30;
              
          if( type == 'mouseenter' ) {
              $this.data( 'tipText', title ).removeAttr( 'title' );
              $this.find ( '.title' ).text(title).fadeIn(50);
              $this.find ( '.title' )
                  .css( 'top', ( yOffset ) + 'px' )
                  .css( 'left', ( xOffset ) + 'px' );
          } else if ( type == 'mouseleave' ) {
              $this.attr( 'title', $this.data( 'tipText' ) );
              $this.find ( '.title' ).fadeOut();
          } else if ( type == 'mousemove' ) {
              $this.find ( '.title' )
                  .css( 'top', ( yOffset ) + 'px' )
                  .css( 'left', ( xOffset ) + 'px' );
          }
          
      }
       
      $( document.querySelectorAll( '.tooltip-custom' ) ).on({ 
           mouseenter: onHoverToggleTooltip, 
           mouseleave: onHoverToggleTooltip, 
           mousemove: onHoverToggleTooltip
      });
        
      });
        