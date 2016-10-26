<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Untitled Document</title>

    <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>

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

    </script>

</head>

<body>

<div class="wrap ">
    <div class="section sTop">
        <div class="top-container">

            <div class="container">

                <div class="large-logo">
                    <a href="#"><img src="img/logo-large.png" alt="logo" /></a>
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
                    <a href="#" class="tooltip-hide" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Facebook"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="tooltip-hide" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Twitter"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="tooltip-hide" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Dribbble"><i class="fa fa-dribbble"></i></a>
                    <a href="#" class="tooltip-hide" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Linkedin"><i class="fa fa-linkedin"></i></a>
                    <a href="#" class="tooltip-hide" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Google plus"><i class="fa fa-google-plus"></i></a>
                </div>

            </div><!-- /about-artical -->
        </div>

    </div>

    <div class="section s2">
        <div class="inner">


            <div class="portfolioFilter">

                <a href="#" data-filter="*">All Categories</a>
                <a href="#" data-filter=".people" class="current">Puzzle</a>
                <a href="#" data-filter=".places">Fight</a>
                <a href="#" data-filter=".food">Action</a>
                <a href="#" data-filter=".objects">Board</a>

            </div><!-- /portfolioFilter -->

            <div class="portfolioContainer">

                <div class="objects">
                    <div class="portfolio-img view view-first">

                        <img src="img/img1.jpg" class="img-responsive"  alt="Responsive image" />


                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <!--<a href="#" class="info">Read More</a>-->
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="people places">
                    <div class="portfolio-img view view-first">

                        <img src="img/img2.jpg" class="img-responsive"  alt="Responsive image" />


                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>



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

                <div class=" people">
                    <div class="portfolio-img view view-first">

                        <img src="img/img4.jpg" class="img-responsive"  alt="Responsive image" />

                        <div class="hover"></div>

                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class=" objects">
                    <div class="portfolio-img view view-first">

                        <img src="img/img5.jpg" class="img-responsive"  alt="Responsive image" />

                        <div class="hover"></div>

                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="people places">
                    <div class="portfolio-img view view-first">

                        <img src="img/img6.jpg" class="img-responsive"  alt="Responsive image" />

                        <div class="hover"></div>

                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="food">
                    <div class="portfolio-img view view-first">

                        <img src="img/img7.jpg" class="img-responsive"  alt="Responsive image" />

                        <div class="hover"></div>

                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class=" people">
                    <div class="portfolio-img view view-first">

                        <img src="img/img8.jpg" class="img-responsive"  alt="Responsive image" />

                        <div class="hover"></div>

                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

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

                <div class=" people">
                    <div class="portfolio-img view view-first">

                        <img src="img/img4.jpg" class="img-responsive"  alt="Responsive image" />

                        <div class="hover"></div>

                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class=" objects">
                    <div class="portfolio-img view view-first">

                        <img src="img/img5.jpg" class="img-responsive"  alt="Responsive image" />

                        <div class="hover"></div>

                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
                        </div>

                    </div>
                </div>

                <div class="people places">
                    <div class="portfolio-img view view-first">

                        <img src="img/img6.jpg" class="img-responsive"  alt="Responsive image" />

                        <div class="hover"></div>

                        <div class="mask">
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="img/img1.jpg" class="info group2" title="Me and my grandfather on the Ohoopee"><i class="fa fa-search-plus"></i></a>
                            <a href="#" class="info"><i class="fa fa-arrow-right"></i></a>
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
                <h6>Nikas</h6>
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

                                    <img src="img/img_mg1.png" class="img-responsive"  alt="Responsive image" />


                                    <div class="isotope-item-dtls">
                                        <h3>Mahjong 3D Cube</h3>
                                        <p>A wonderful serenity has taken possession of my entire soul</p>

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
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/img_bt1.png" class="img-responsive"  alt="Responsive image" />

                                    <div class="isotope-item-dtls">
                                        <h3>Space Tanks</h3>
                                        <p>A wonderful serenity has taken possession of my entire soul</p>

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
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/img1.jpg" class="img-responsive"  alt="Responsive image" />


                                    <div class="isotope-item-dtls">
                                        <h3>Item I</h3>
                                        <p>A wonderful serenity has taken possession of my entire soul </p>


                                        <div class="blue-btn">
                                            <a class="first-link" href="blog.html">
                                                read more
                                            </a>
                                            <a href="blog.html">
                                                read more
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

                                    <img src="img/img1.jpg" class="img-responsive"  alt="Responsive image" />


                                    <div class="isotope-item-dtls">
                                        <h3>Item I</h3>
                                        <p>A wonderful serenity has taken possession of my entire soul</p>

                                        <div class="blue-btn">
                                            <a class="first-link" href="blog.html">
                                                read more
                                            </a>
                                            <a href="blog.html">
                                                read more
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/img1.jpg" class="img-responsive"  alt="Responsive image" />

                                    <div class="isotope-item-dtls">
                                        <h3>Item I</h3>
                                        <p>A wonderful serenity has taken possession of my entire soul</p>

                                        <div class="blue-btn">
                                            <a class="first-link" href="blog.html">
                                                read more
                                            </a>
                                            <a href="blog.html">
                                                read more
                                            </a>
                                        </div>
                                    </div><!--/isotope-item-dtls-->
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">

                            <div class="slide">
                                <div class="portfolio-img view view-first">

                                    <img src="img/img1.jpg" class="img-responsive"  alt="Responsive image" />


                                    <div class="isotope-item-dtls">
                                        <h3>Item I</h3>
                                        <p>A wonderful serenity has taken possession of my entire soul </p>


                                        <div class="blue-btn">
                                            <a class="first-link" href="blog.html">
                                                read more
                                            </a>
                                            <a href="blog.html">
                                                read more
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

            <div align="center" >
                Nikas Apps @ 2016
            </div>
        </div>
    </div>

</div>


</body>
</html>
