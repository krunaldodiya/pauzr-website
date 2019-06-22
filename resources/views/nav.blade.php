<div class="container">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
            data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
        </button>

        @if(Request::path() == "/")
        <a class="navbar-brand page-scroll" href="#page-top">PauzR</a>
        @else
        <a class="navbar-brand page-scroll" href="/">PauzR</a>
        @endif
    </div>

    @if(Request::path() == "/")
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
            <li class=""><a class="page-scroll" href="#how-it-works">How it works</a></li>
            <li class=""><a class="page-scroll" href="#download">Download</a></li>
            <li class=""><a class="page-scroll" href="#features">Features</a></li>
            <li class=""><a class="page-scroll" href="#contact">Contact</a>
            </li>
        </ul>
    </div>
    @endif
</div>