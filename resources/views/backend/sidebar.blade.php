<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="{{ url('/admin') }}">
                <i class="ti-shield menu-icon"></i>
                <span class="menu-title">Dashboard</span>
        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false"
                aria-controls="ui-basic">
                <i class="ti-view-list-alt menu-icon"></i>
                <span class="menu-title">Master Data</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="{{ url('/kategori') }}">Kategori</a></li>
                    <li class="nav-item"> <a class="nav-link" href="{{ url('/jurusan') }}">Jurusan</a></li>
                </ul>
            </div>
        </li>
        </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ url('/organisasi') }}">
                <i class="ti-view-list-alt menu-icon"></i>
                <span class="menu-title">Organisasi</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ url('/mahasiswa') }}">
                <i class="ti-view-list-alt menu-icon"></i>
                <span class="menu-title">Mahasiswa</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ url('/pendaftaran') }}">
                <i class="ti-view-list-alt menu-icon"></i>
                <span class="menu-title">Pendaftaran</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ url('/form') }}">
                <i class="ti-layout-list-post menu-icon"></i>
                <span class="menu-title">Form elements</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="pages/charts/chartjs.html">
                <i class="ti-pie-chart menu-icon"></i>
                <span class="menu-title">Charts</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="pages/icons/themify.html">
                <i class="ti-star menu-icon"></i>
                <span class="menu-title">Icons</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <i class="ti-user menu-icon"></i>
                <span class="menu-title">User Pages</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Login </a></li>
                    <li class="nav-item"> <a class="nav-link" href="pages/samples/login-2.html"> Login 2 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Register </a></li>
                    <li class="nav-item"> <a class="nav-link" href="pages/samples/register-2.html"> Register 2 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="pages/samples/lock-screen.html"> Lockscreen </a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="documentation/documentation.html">
                <i class="ti-write menu-icon"></i>
                <span class="menu-title">Documentation</span>
            </a>
        </li>
    </ul>
</nav>
