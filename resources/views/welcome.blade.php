<!DOCTYPE html>
<!-- saved from url=(0020) -->
<html lang="en">

<head>
    <title>Pauzr</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/css/simple-line-icons.css">
    <link rel="stylesheet" type="text/css" href="/css/device-mockups.min.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">

    <link id="favicon" rel="shortcut icon" href="/images/favicon.png" type="image/png">

    <link href="http://fonts.googleapis.com/css?family=Lato">
    <link href="http://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900">
    <link href="http://fonts.googleapis.com/css?family=Muli">
    <!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
</head>

<body id="page-top" cz-shortcut-listen="true">
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top affix-top">
        @include('nav')
    </nav>

    <header>
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="header-content">
                        <div class="header-content-inner">
                            <h1 style="font-size:30px">
                                <b>PauzR</b> is an app which aims to reduce mobile phone addiction!
                                <br>
                                <br>
                                <br>
                                <i>If your phone usage per day is more than 2 hrs, this is for you.</i>
                            </h1>
                            <div style="height: 200px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="device-container">
                                <div class="screen" style="width: 360px;">
                                    <img src="/images/s1.png" class="img-responsive" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="device-container">
                                <div class="screen" style="width: 360px;">
                                    <img src="/images/s3.png" class="img-responsive" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="device-container">
                                <div class="screen" style="width: 360px;">
                                    <img src="/images/s2.png" class="img-responsive" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section id="how-it-works" class="how-it-works">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="device-container">
                        <div class="screen" style="width: 300px; border:1px solid #ccc;">
                            <img src="/images/howitworks.png" class="img-responsive" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="device-container">
                        <div class="screen" style="width: 300px; border:1px solid #ccc;">
                            <img src="/images/w1.png" class="img-responsive" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="device-container">
                        <div class="screen" style="width: 300px; border:1px solid #ccc;">
                            <img src="/images/w2.png" class="img-responsive" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="device-container">
                        <div class="screen" style="width: 300px; border:1px solid #ccc;">
                            <img src="/images/w3.png" class="img-responsive" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="download" class="download bg-primary text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h2 class="section-heading">Discover what all the buzz is about!</h2>
                    <p>Our app is available on any android device! Download now to get started!</p>
                    <div class="badges">
                        <a class="badge-link" target="_blank"
                            href="https://play.google.com/store/apps/details?id=com.pauzr.org">
                            <img src="/images/google-play-badge.svg" alt="">
                        </a>
                        {{-- <a class="badge-link" href="#"><img src="/images/app-store-badge.svg" alt=""></a> --}}
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="features" class="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-heading">
                        <h2>Fantastic Features, Unlimited Fun</h2>
                        <p class="text-muted">Check out what you can do with this app!</p>
                        <hr>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="device-container">
                        <div class="screen">
                            <img src="/images/pauzr.png" class="img-responsive" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="feature-item"><i class="icon-screen-smartphone text-primary"></i>
                                    <h3>Three Pause Durations</h3>
                                    <p class="text-muted">20mins, 40mins or
                                        60mins. For how long
                                        can you pause your
                                        phone?
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="feature-item"><i class="icon-people text-primary"></i>
                                    <h3>Create Groups</h3>
                                    <p class="text-muted">Create groups with
                                        friends, family &
                                        colleagues and
                                        compete among each
                                        other!</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="feature-item"><i class="icon-magic-wand text-primary"></i>
                                    <h3>Different Themes</h3>
                                    <p class="text-muted">We got your mood
                                        covered with 3
                                        fantastic singleclick themes in the
                                        app. Check 'em out!</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="feature-item"><i class="icon-location-pin text-primary"></i>
                                    <h3>City Level Scoreboard</h3>
                                    <p class="text-muted">Check how others are
                                        performing in your
                                        city. You gotta beat
                                        them!
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    {{-- <section class="cta">
        <div class="cta-content">
            <div class="container">
                <h2>Cheers to<br>
                    All Winners.</h2>
                <a href="#contact" class="btn btn-outline btn-xl page-scroll">Let's Get Started!</a>
            </div>
        </div>
        <div class="overlay"></div>
    </section> --}}

    <section id="contact" class="contact bg-primary">
        <div class="container">
            <h2>We <i class="fa fa-heart"></i> new friends!</h2>
            <ul class="list-inline list-social">
                <li class="social-twitter"><a href="https://twitter.com/PauzrApp" target="_blank">
                        <i class="fa fa-twitter"></i></a>
                </li>
                <li class="social-facebook"><a href="https://www.facebook.com/pauzrapp" target="_blank">
                        <i class="fa fa-facebook"></i></a>
                </li>
                <li class="social-instagram"><a href="https://www.instagram.com/pauzrapp" target="_blank">
                        <i class="fa fa-instagram"></i></a>
                </li>
            </ul>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>Copyright © All Rights Reserved</p>
            <ul class="list-inline">
                <li><a href="/privacy">Privacy</a></li>
                <li><a href="/terms">Terms</a></li>
            </ul>
            <p>Have any query? Mail us at <a href="mailto:support@pauzr.com">support@pauzr.com</a></p>
        </div>
    </footer>
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.easing.min.js"></script>
    <script src="/js/script.js"></script>

</body>

</html>