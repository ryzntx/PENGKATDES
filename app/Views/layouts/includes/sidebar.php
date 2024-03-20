<nav class="navbar bg-body-tertiary shadow align-items-start sidebar accordion p-0 navbar-light m-md-3 rounded-4">
    <div class="container-fluid d-flex flex-column p-0">
        <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
            <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-landmark"></i></div>
            <div class="sidebar-brand-text mx-3"><span>PENGKATDES</span></div>
        </a>
        <hr class="sidebar-divider my-0">
        <ul class="navbar-nav text-light" id="accordionSidebar">
            <li class="nav-item"><a class="nav-link <?= (url_is('beranda')) ? 'active' : '' ?>"
                    href="<?= base_url('beranda') ?>"><i class="fas fa-tachometer-alt me-3"></i><span>Beranda</span></a>
            </li>
            <li class="nav-item"><a
                    class="nav-link <?= (url_is('admin/manajemenAkun') || url_is('admin/manajemenAkun/*')) ? 'active' : '' ?>"
                    href="<?= base_url('admin/manajemenAkun') ?>"><i class="fas fa-users me-3"></i><span>Manajemen
                        Pegawai</span></a></li>
        </ul>
        <!-- <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div> -->
    </div>
</nav>