<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Dashboard User</title>
        <link rel="stylesheet" href="<?=base_url('assets/vendor/bootstrap/css/bootstrap.min.css')?>">
        <link rel="stylesheet" href="<?=base_url('assets/vendor/bootstrap-icons/font/bootstrap-icons.min.css')?>">
        <link rel="stylesheet" href="<?=base_url('assets/vendor/bootstrap-fileinput/css/fileinput.min.css')?>">
        <link rel="stylesheet" href="<?=base_url('assets/css/Nunito.css')?>">
        <link rel="stylesheet" href="<?=base_url('assets/fonts/fontawesome-all.min.css')?>">
        <link rel="stylesheet" href="<?=base_url('assets/vendor/bootstrap-fileinput/themes/bs5/theme.min.js')?>">
        <link rel="stylesheet" href="<?=base_url('assets/vendor/datatables/datatables.min.css')?>">
        <link rel="stylesheet" href="<?=base_url('assets/vendor/sweetalert2/dist/sweetalert2.min.css')?>">
        <style>
        .form-group {
            margin-bottom: 1rem;
        }
        </style>
    </head>

    <body>
        <nav class="navbar navbar-light navbar-expand-lg bg-body-tertiary px-2">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">PENGKATDES</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="<?=base_url('user')?>">Beranda</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?=base_url('user/datalaporan')?>">Daftar Laporan</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?=base_url('user/datalaporan/buat')?>">Buat Laporan</a>
                        </li>
                    </ul>
                </div>
                <div class="theme-switcher nav-item dropdown me-3">
                    <a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor"
                            viewBox="0 0 16 16" class="bi bi-sun-fill mb-1">
                            <path
                                d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8M8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0m0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13m8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5M3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8m10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0m-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707M4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z">
                            </path>
                        </svg>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end">
                        <a class="dropdown-item d-flex align-items-center" href="#" data-bs-theme-value="light">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor"
                                viewBox="0 0 16 16" class="bi bi-sun-fill opacity-50 me-2">
                                <path
                                    d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8M8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0m0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13m8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5M3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8m10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0m-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707M4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z">
                                </path>
                            </svg>Light
                        </a>
                        <a class="dropdown-item d-flex align-items-center" href="#" data-bs-theme-value="dark">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor"
                                viewBox="0 0 16 16" class="bi bi-moon-stars-fill opacity-50 me-2">
                                <path
                                    d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278">
                                </path>
                                <path
                                    d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z">
                                </path>
                            </svg>Dark
                        </a>
                        <a class="dropdown-item d-flex align-items-center" href="#" data-bs-theme-value="auto">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor"
                                viewBox="0 0 16 16" class="bi bi-circle-half opacity-50 me-2">
                                <path d="M8 15A7 7 0 1 0 8 1zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16"></path>
                            </svg>Auto
                        </a>
                    </div>
                </div>
                <div class="navbar-nav dropdown navbar-text">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <?php
$avatar = new LasseRafn\InitialAvatarGenerator\InitialAvatar();
$user = model(App\Models\UserModel::class)->ambilDataLogin();
echo $avatar->name($user->nama)->rounded()->smooth()->size(40)->autoColor()->generateSvg()->toXMLString();
?>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li>
                            <h5 class="dropdown-header">Hi, <?=$user->nama?></h5>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="<?=base_url('profilesettings')?>">Pengaturan Profil</a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="<?=base_url('auth/logout')?>">Keluar</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="py-3">
            <?=$this->renderSection('content')?>
        </div>
        <script src="<?=base_url('assets/vendor/jquery/jquery.min.js')?>"></script>
        <script src="<?=base_url('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')?>"></script>
        <script src="<?=base_url('assets/vendor/bootstrap-fileinput/js/fileinput.min.js')?>"></script>
        <script src="<?=base_url('assets/vendor/datatables/datatables.min.js')?>"></script>
        <script src="<?=base_url('assets/vendor/sweetalert2/dist/sweetalert2.all.min.js')?>"></script>
        <?=$this->include('layouts/alert-messages')?>
        <script>
        (function() {

            // JavaScript snippet handling Dark/Light mode switching

            const getStoredTheme = () => localStorage.getItem('theme');
            const setStoredTheme = theme => localStorage.setItem('theme', theme);
            const forcedTheme = document.documentElement.getAttribute('data-bss-forced-theme');

            const getPreferredTheme = () => {

                if (forcedTheme) return forcedTheme;

                const storedTheme = getStoredTheme();
                if (storedTheme) {
                    return storedTheme;
                }

                const pageTheme = document.documentElement.getAttribute('data-bs-theme');

                if (pageTheme) {
                    return pageTheme;
                }

                return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
            }

            const setTheme = theme => {
                if (theme === 'auto' && window.matchMedia('(prefers-color-scheme: dark)').matches) {
                    document.documentElement.setAttribute('data-bs-theme', 'dark');
                } else {
                    document.documentElement.setAttribute('data-bs-theme', theme);
                }
            }

            setTheme(getPreferredTheme());

            const showActiveTheme = (theme, focus = false) => {
                const themeSwitchers = [].slice.call(document.querySelectorAll('.theme-switcher'));

                if (!themeSwitchers.length) return;

                document.querySelectorAll('[data-bs-theme-value]').forEach(element => {
                    element.classList.remove('active');
                    element.setAttribute('aria-pressed', 'false');
                });

                for (const themeSwitcher of themeSwitchers) {

                    const btnToActivate = themeSwitcher.querySelector('[data-bs-theme-value="' + theme +
                        '"]');

                    if (btnToActivate) {
                        btnToActivate.classList.add('active');
                        btnToActivate.setAttribute('aria-pressed', 'true');
                    }
                }
            }

            window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', () => {
                const storedTheme = getStoredTheme();
                if (storedTheme !== 'light' && storedTheme !== 'dark') {
                    setTheme(getPreferredTheme());
                }
            });

            window.addEventListener('DOMContentLoaded', () => {
                showActiveTheme(getPreferredTheme());

                document.querySelectorAll('[data-bs-theme-value]')
                    .forEach(toggle => {
                        toggle.addEventListener('click', (e) => {
                            e.preventDefault();
                            const theme = toggle.getAttribute('data-bs-theme-value');
                            setStoredTheme(theme);
                            setTheme(theme);
                            showActiveTheme(theme);
                        })
                    })
            });
        })();
        </script>
        <?=$this->renderSection('script')?>
    </body>

</html>