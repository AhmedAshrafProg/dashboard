<div class="deznav">
    <div class="deznav-scroll">
        <div class="main-profile">
            <img src={{ asset(Auth::user()->profile_photo_path) }} alt="">
            <a href="javascript:void(0);"><i class="fa fa-cog" aria-hidden="true"></i></a>
            <h5 class="mb-0 fs-20 text-black "><span class="font-w400">Hello,</span> {{ Auth::user()->name }}</h5>
            <p class="mb-0 fs-14 font-w400">{{ Auth::user()->email }}</p>
        </div>
        <ul class="metismenu" id="menu">
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-144-layout"></i>
                    <span class="nav-text">Dashboard</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="{{route('dashboard')}}">Dashboard</a></li>
                </ul>

            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-077-menu-1"></i>
                    <span class="nav-text">Services</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="{{ route('allservices') }}">All Services</a></li>
                    <li><a href="{{ route('add.service') }}">Insert Service</a></li>
                </ul>
            </li>

            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-077-menu-1"></i>
                    <span class="nav-text">Courses</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="{{ route('allcourses') }}">All Courses</a></li>
                    <li><a href="{{ route('add.course') }}">Insert Course</a></li>
                </ul>
            </li>


            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-077-menu-1"></i>
                <span class="nav-text">Projects</span>
            </a>
            <ul aria-expanded="false">
                <li><a href="{{ route('all.projects') }}">All Projects</a></li>
                <li><a href="{{ route('add.project') }}">Insert Project</a></li>
            </ul>
        </li>

            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-077-menu-1"></i>
                    <span class="nav-text">Team</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="{{ route('all.team') }}">All Team</a></li>
                    <li><a href="{{ route('add.team') }}">Insert Team</a></li>
                </ul>
            </li>

            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-077-menu-1"></i>
                    <span class="nav-text">About</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="{{ route('view.about') }}">View</a></li>
                    <li><a href="{{ route('add.about') }}">New</a></li>
                </ul>
            </li>

            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-077-menu-1"></i>
                <span class="nav-text">Charts</span>
            </a>
            <ul aria-expanded="false">
                <li><a href="{{ route('view.chart') }}">All Charts</a></li>
                <li><a href="{{ route('add.chart') }}">Add Chart</a></li>
            </ul>
        </li>

        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
            <i class="flaticon-077-menu-1"></i>
            <span class="nav-text">Messages</span>
        </a>
        <ul aria-expanded="false">
            <li><a href="{{ route('view.Messages') }}">All Messages</a></li>
        </ul>
    </li>


    <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
        <i class="flaticon-077-menu-1"></i>
        <span class="nav-text">Footer</span>
    </a>
    <ul aria-expanded="false">
        <li><a href="{{ route('view.footer') }}">View</a></li>
    </ul>
</li>

<li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
    <i class="flaticon-077-menu-1"></i>
    <span class="nav-text">Home Page</span>
</a>
<ul aria-expanded="false">
    <li><a href="{{ route('view.home') }}">View</a></li>
</ul>
</li>

        </ul>

    </div>
</div>
