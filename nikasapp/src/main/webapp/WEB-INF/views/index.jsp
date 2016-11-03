<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Nikas Games</title>

    <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>

    <%--flavicon--%>
    <link rel="icon" type="image/png" href="/img/icon.png">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="css/font-awesome.min.css">

    <link rel="stylesheet/less" type="text/css" href="css/style.less" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <script	src="js/bootstrap.min.js" type="text/javascript" ></script>

    <script	src="js/jquery.smint.js" type="text/javascript" ></script>

    <script type="text/javascript" src="js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="js/jquery.easy-ticker.js"></script>

    <script src="js/less.js" type="text/javascript"></script>

    <script src="js/isotop.js"></script>

    <script src="js/jquery.colorbox.js"></script>

    <script type="text/javascript">


        $('.collapse').collapse();



        $(function() {
            $('a[href*=#]:not([href=#])').click(function() {
                if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        });

        $(document).ready( function() {
            $('.subMenu').smint({
                'scrollSpeed' : 1000
            });

            var dd = $('.vticker').easyTicker({
                direction: 'up',
                easing: 'easeInOutBack',
                speed: 'slow',
                interval: 4000,
                height: 'auto',
                visible: 1,
                mousePause: 0,
                controls: {
                    up: '.up',
                    down: '.down',
                    toggle: '.toggle',
                    stopText: 'Stop !!!'
                }
            }).data('easyTicker');

        });

        $(function () { $('.tooltip-hide').tooltip('hide');});



        $(document).ready(function(){
            // Portfolio


            var $container = $('.portfolioContainer');
            $container.isotope({
                filter: '*',
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false
                }
            });

            $('.portfolioFilter a').click(function(){
                $('.portfolioFilter .current').removeClass('current');
                $(this).addClass('current');

                var selector = $(this).attr('data-filter');
                $container.isotope({
                    filter: selector,
                    animationOptions: {
                        duration: 750,
                        easing: 'linear',
                        queue: false
                    }
                });
                return false;

            });

            $(".group2").colorbox({rel:'group2', transition:"fade"});

        });

        $('.carousel').carousel();

        //reload pictures after onload and a time
        $(document).ready(function () {
            setTimeout(function () {
                $(".portfolioFilter .current").trigger('click');
            }, 1000);
        });


    </script>

</head>

<body>

<div class="wrap ">
    <div class="section sTop">
        <div class="top-container">

            <div class="container">

                <div class="large-logo">
                    <a href="https://play.google.com/store/apps/dev?id=6360854639703788826"><img src="img/logo-large.png" alt="logo" /></a>
                </div>

                <div class="vticker">
                    <ul>
                        <li>WE ARE NIKAS</li>
                        <li>PLAY OUR GAMES</li>
                        <li>AND BE HAPPY</li>
                    </ul>
                </div>

                <!--<a href="#sTop" class="click-down"><i class="fa fa-chevron-circle-down"></i></a>-->
                <div class="" >
                    <ul class="nav nav-pills nav-justified">
                        <li class="active"><a href="#sTop"><i class="fa fa-cog"></i>About</a></li>
                        <li><a href="#s2"><i class="fa fa-picture-o"></i>Screens</a></li>
                        <li><a href="#s6"><i class="fa fa-pencil-square-o"></i>Games</a></li>
                        <li><a href="#s7"><i class="fa fa-comment"></i>Contact</a></li>
                    </ul>
                </div>

            </div>

        </div><!-- /top-container -->

    </div>

    <div class="subMenu" >
        <div class="container">
            <div class="row">
                <div class="col-md-2 th-logo">
                    <a href="#sTop">
                        <img src="img/logo.png" alt="logo" />
                    </a>
                </div>
                <div class="col-md-10">

                    <!--<nav class="navbar navbar-default" role="navigation">
                      <div class="container-fluid">
                        <div class="navbar-header">
                          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                          </button>
                          <a class="navbar-brand" href="#">Brand</a>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                          <ul class="nav navbar-nav inner pull-right">
                            <li><a href="#about" class="subNavBtn">About Us</a></li>
                            <li><a href="#s2" class="subNavBtn">Our Work</a></li>
                            <li><a href="#s3" class="subNavBtn">Services</a></li>
                            <li><a href="#s4" class="subNavBtn">Testimonials</a></li>
                            <li><a href="#s6" class="subNavBtn">Blog</a></li>
                            <li><a href="#s7" class="subNavBtn">Contact</a></li>
                          </ul>
                        </div>
                      </div>
                    </nav>-->

                    <div class="inner pull-right">
                        <a href="#about" class="subNavBtn">About Us</a>
                        <a href="#s2" class="subNavBtn">Screens</a>
                        <%--<a href="#s3" class="subNavBtn">Services</a>--%>
                        <%--<a href="#s4" class="subNavBtn">Testimonials</a>--%>
                        <a href="#s6" class="subNavBtn">Games</a>
                        <a href="#s7" class="subNavBtn">Contact</a>
                    </div>
                </div>
            </div><!-- row -->
        </div>
    </div>

    <div class="section about">
        <div class="inner ">
            <div class="about-artical">
                <h2>Nikas Games</h2>
                <p>
                    We are team of creative engineers. We passionate with web & android development and other creative things.
                    If you are looking for android games with endless possibilities, you come in right place.
                </p>

                <div class="creative-minds">
                    <div class="row-cm">
                        <div class="col-cm">
                            <figure class="cm-item">
                                <img alt="" src="img/c-1.jpg">
                                <figcaption></figcaption>
                            </figure>
                            <h4 class="cm-title" data-animate="fadeInDown" style="">Nikita</h4>
                            <p class="cm-descr">App Development</p>
                        </div>
                        <div class="col-cm">
                            <figure class="cm-item">
                                <img alt="" src="img/c-3.jpg">
                                <figcaption></figcaption>
                            </figure>
                            <h4 class="cm-title" data-animate="fadeInDown" style="">Kate</h4>
                            <p class="cm-descr">App Development</p>
                        </div>

                    </div>
                </div><!-- /creative-minds -->

                <div id="social-contect" class="social-contect">
                    <a href="https://vk.com/mahjong3d" target="_blank" class="tooltip-hide" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Vkontakte"><i class="fa fa-vk"></i></a>
                    <a href="https://www.youtube.com/user/electron252/videos" target="_blank" class="tooltip-hide" data-placement="top" data-toggle="tooltip" type="button" data-original-title="YouTube"><i class="fa fa-youtube"></i></a>
                    <a href="https://plus.google.com/communities/110968778109785173324" target="_blank" class="tooltip-hide" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Google Plus"><i class="fa fa-google-plus"></i></a>
                    <a href="https://play.google.com/store/apps/dev?id=6360854639703788826" target="_blank" class="tooltip-hide" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Google Play"><i class="fa fa-play"></i></a>
                </div>

            </div><!-- /about-artical -->
        </div>

    </div>

    <div class="section s2">
        <div class="inner">

            <div class="portfolioFilter">

                <a href="#" data-filter="*">All Categories</a>
                <a href="#" data-filter=".action" class="current">Action</a>
                <a href="#" data-filter=".puzzle">Puzzle</a>
                <a href="#" data-filter=".board">Board</a>
                <a href="#" data-filter=".education">Education</a>

            </div><!-- /portfolioFilter -->

            <div class="portfolioContainer">
<%--
                <div class="food">
                    <div class="portfolio-img view view-first">

                        <img src="img/img3.jpg" class="img-responsive"  alt="Responsive image" />


                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>
--%>
                <%--games and apps--%>
                <div class="puzzle board">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/mg2.jpg" class="img-responsive"  alt="Mahjong Image" />

                        <div class="mask">
                            <p>Mahjong 3D Cube. The Simplest level. :)</p>
                            <a href="mahjong3DCube" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="puzzle board">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/mg1.jpg" class="img-responsive"  alt="Mahjong Image" />

                        <div class="mask">
                            <p>Mahjong 3D Cube. Not a simple level... </p>
                            <a href="mahjong3DCube" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="puzzle">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/crtree1.jpg" class="img-responsive"  alt="XMasTree Image" />

                        <div class="mask">
                            <p>XMasTree Light Up...</p>
                            <a href="xmastree" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="puzzle">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/crtree2.jpg" class="img-responsive"  alt="XMasTree Image" />

                        <div class="mask">
                            <p>XMasTree Light Up...</p>
                            <a href="xmastree" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="puzzle">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/grch1.jpg" class="img-responsive"  alt="Growing Cherry Image" />

                        <div class="mask">
                            <p>Cherry is growing.. Become a gardener of evolution</p>
                            <a href="growingcherry" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="puzzle">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/numbers1.jpg" class="img-responsive"  alt="2048 Numbers Image" />

                        <div class="mask">
                            <p>Popular game 2048 with colorful design and features</p>
                            <a href="numbers2048" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="board">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/aa1.jpg" class="img-responsive"  alt="Arimaa 3D Image" />

                        <div class="mask">
                            <p>Arimaa 3D. Try to beat the Artificial Intelligence</p>
                            <a href="arimaa3D" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="board">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/aa2.jpg" class="img-responsive"  alt="Arimaa 3D Image" />

                        <div class="mask">
                            <p>Arimaa 3D. Try to beat the Artificial Intelligence</p>
                            <a href="arimaa3D" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="action">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/faceball1.jpg" class="img-responsive"  alt="FaceBall Image" />

                        <div class="mask">
                            <p>FaceBall 3D. Control moving FaceBall and prevent it from falling into the abyss</p>
                            <a href="faceball3D" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="action">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/faceball2.jpg" class="img-responsive"  alt="FaceBall Image" />

                        <div class="mask">
                            <p>FaceBall 3D. Control moving FaceBall and prevent it from falling into the abyss</p>
                            <a href="faceball3D" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <%--Space tanks 3D--%>
                <div class="action">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/btank1.jpg" class="img-responsive" alt="Space Tank 3D Image"/>

                        <div class="mask">
                            <p>
                                Space Tank 3D. Defeat the Planet of tanks.
                                Play with your friends over a network online
                            </p>
                            <a href="spacetanks3D" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="action">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/btank2.jpg" class="img-responsive" alt="Space Tank 3D Image"/>

                        <div class="mask">
                            <p>
                                Space Tank 3D. Defeat the Planet of tanks.
                                Play with your friends over a network online
                            </p>
                            <a href="spacetanks3D" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <%--follow the light 3D--%>
                <div class="action">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/ftl1.jpg" class="img-responsive" alt="Follow The Light 3D Image"/>

                        <div class="mask">
                            <p>What do you know about the Light?</p>
                            <a href="follow3D" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="action">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/ftl2.jpg" class="img-responsive" alt="Follow The Light 3D Image"/>

                        <div class="mask">
                            <p>What do you know about the Light?</p>
                            <a href="follow3D" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <%--star finder--%>
                <div class="education">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/sf1.jpg" class="img-responsive" alt="Star Finder Image"/>

                        <div class="mask">
                            <p>Star Finder - the application allows you to recognize the stars in the sky.</p>
                            <a href="starfinder" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="education">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/sf2.jpg" class="img-responsive" alt="Star Finder Image"/>

                        <div class="mask">
                            <p>Star Finder - the application allows you to recognize the stars in the sky.</p>
                            <a href="starfinder" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="education">
                    <div class="portfolio-img view view-first">

                        <img src="img/screens/sf3.jpg" class="img-responsive" alt="Star Finder Image"/>

                        <div class="mask">
                            <p>Star Finder - the application allows you to recognize the stars in the sky.</p>
                            <a href="starfinder" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

            </div><!-- /portfolioContainer -->

        </div>
    </div>

    <div class="transparent-bg">
        <div class="bcg">
            <div class="bcg-bg">
                <h1>"Game is the engine of progress."</h1>
                <h4>Nikas</h4>
                <h6>(The last Deep Learning success related to the multi GPU Graphics Cards development success)</h6>
                <%--<h5>We need graphics cards to play games)</h5>--%>
            </div>
        </div>
    </div><!-- /transparent-bg -->

    <div class="section s6">
        <div class="inner">
            <div class="blog">

                <div class="container">

                    <div class="blog-header">

                        <h2>Our Games and Apps</h2>
                        <p>
                            See, Download, Play.. and be Happy. :)
                        </p>

                    </div><!-- /blog-header -->

                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/icons/img_mg1.jpg" class="img-responsive"  alt="Responsive image" />


                                    <div class="isotope-item-dtls">
                                        <h3>Mahjong 3D Cube</h3>
                                        <p>You should cleanse the Universe of Mahjong</p>

                                        <div class="blue-btn">
                                            <a class="first-link" href="mahjong3DCube">
                                                Get more
                                            </a>
                                            <a href="mahjong3DCube">
                                                Go
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/icons/img_bt1.jpg" class="img-responsive"  alt="Responsive image" />

                                    <div class="isotope-item-dtls">
                                        <h3>Space Tanks 3D</h3>
                                        <p>
                                            Defeat the Planet of tanks.
                                            Play with your friends over a network online
                                        </p>

                                        <div class="blue-btn">
                                            <a class="first-link" href="spacetanks3D">
                                                Get more
                                            </a>
                                            <a href="spacetanks3D">
                                                Go
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/icons/img_kol1.jpg" class="img-responsive"  alt="Responsive image" />


                                    <div class="isotope-item-dtls">
                                        <h3>FaceBall Balance 3D</h3>
                                        <p>Control moving FaceBall and prevent it from falling into the abyss</p>


                                        <div class="blue-btn">
                                            <a class="first-link" href="blog.html">
                                                Get more
                                            </a>
                                            <a href="blog.html">
                                                Go
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/icons/img_crtree1.jpg" class="img-responsive"  alt="Responsive image" />


                                    <div class="isotope-item-dtls">
                                        <h3>XMas Tree Light Up</h3>
                                        <p>Light Up the Christmas Tree. Compete with your friends</p>

                                        <div class="blue-btn">
                                            <a class="first-link" href="xmastree">
                                                Get more
                                            </a>
                                            <a href="xmastree">
                                                Go
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/icons/img_ftl1.jpg" class="img-responsive"  alt="Responsive image" />

                                    <div class="isotope-item-dtls">
                                        <h3>Follow The Light 3D</h3>
                                        <p>
                                            What do you know about the Light? Follow it and learn
                                        </p>

                                        <div class="blue-btn">
                                            <a class="first-link" href="followthelight">
                                                Get more
                                            </a>
                                            <a href="followthelight">
                                                Go
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/icons/img_grch1.jpg" class="img-responsive"  alt="Responsive image" />

                                    <div class="isotope-item-dtls">
                                        <h3>Growing Cherry</h3>
                                        <p>
                                            Evolution continue... because these Cherry Gardens are growing... and you helping it
                                        </p>

                                        <div class="blue-btn">
                                            <a class="first-link" href="growingcherry">
                                                Get more
                                            </a>
                                            <a href="growingcherry">
                                                Go
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/icons/img_aa1.jpg" class="img-responsive"  alt="Responsive image" />


                                    <div class="isotope-item-dtls">
                                        <h3>Arimaa 3D</h3>
                                        <p>Play Arimaa vs AI or a your friend. This is a smart board game</p>

                                        <div class="blue-btn">
                                            <a class="first-link" href="arimaa3D">
                                                Get more
                                            </a>
                                            <a href="arimaa3D">
                                                Go
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/icons/img_ns1.jpg" class="img-responsive"  alt="Responsive image" />

                                    <div class="isotope-item-dtls">
                                        <h3>2048 Numbers</h3>
                                        <p>
                                            The 2048 reincarnation!!!
                                            This is a great time killer
                                        </p>

                                        <div class="blue-btn">
                                            <a class="first-link" href="numbers2048">
                                                Get more
                                            </a>
                                            <a href="numbers2048">
                                                Go
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/icons/img_sf1.jpg" class="img-responsive"  alt="Responsive image" />


                                    <div class="isotope-item-dtls">
                                        <h3>Star Finder</h3>
                                        <p>
                                            This app allows you to recognize the stars in the sky
                                        </p>


                                        <div class="blue-btn">
                                            <a class="first-link" href="starfinder">
                                                Get more
                                            </a>
                                            <a href="starfinder">
                                                Go
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                    </div>


                </div><!-- container -->

            </div><!-- /blog -->
        </div>
    </div>


    <div class="section s7">
        <div class="inner">

            <div class="transparent-bg">
                <div class="bcg">
                    <div class="bcg-bg bcg-bg-blk">

                        <div class="container">

                            <div class="contact">

                                <h1>Contact Us</h1>

                                <div class="row">

                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">

                                        <div class="contact-form">
                                            <form class="form-horizontal">
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Name</label>
                                                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Email address</label>
                                                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Subject</label>
                                                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Massage</label>
                                                            <textarea class="form-control" rows="3"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <div class="controls">
                                                        <button type="button" class="btn btn-default btn-lg">Send</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>

                                    </div>

                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

<%--
                                        <div class="address">
                                            <h3>Address:</h3>
                                            <i class="icons-marker icon-home"></i>
                                            <div class="contact-address">
                                                B block, 1no. road <br>
                                                Chandgao Abashik, <br>
                                                Chittagong.
                                            </div>
                                        </div><!--End address-->

                                        <div class="address">
                                            <h3>Phones:</h3>
                                            <div class="phone">
                                                <i class="icon-volume-down"></i>
                                                <div class="contact-address">
                                                    +1 800 119 6590
                                                </div>
                                            </div>
                                            <div class="phone">
                                                <i class="icon-print"></i>
                                                <div class="contact-address">
                                                    +1 800 119 6590
                                                </div>
                                            </div>
                                        </div><!--End address-->
--%>

                                        <div class="address">
                                            <h3>Email:</h3>
                                            <div class="phone">
                                                <i class="icon-envelope"></i>
                                                <div class="email">
                                                    <a href="mailto:nikita.avdonin@gmail.com?subject=Question From Site User">nikita.avdonin@gmail.com</a>
                                                </div>
                                            </div>
                                        </div><!--End address-->

                                    </div>

                                </div><!-- /row -->


                            </div>

                        </div>

                    </div>
                </div>
            </div><!-- /transparent-bg -->


            <!--

                                               <div class="gmap map" id="map" data-center="Brugse Heirweg 37 Aartrijke Belgium" data-zoom="15">
                                                <address>
                                                  <div><iframe src="http://maps.google.com/maps/ms?vpsrc=6&amp;ctz=-480&amp;ie=UTF8&amp;msa=0&amp;msid=210840796990572645528.00049770919ccd6759de3&amp;t=m&amp;ll=30.751278,68.203125&amp;spn=84.446143,175.429688&amp;z=2&amp;output=embed" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="1150" height="400">    </iframe></div>
                                                </address>
                                              </div>&lt;!&ndash;End map&ndash;&gt;

            -->

            <div class="text-center" >
                Nikas Games @ 2016
            </div>
        </div>
    </div>

</div>


</body>
</html>
