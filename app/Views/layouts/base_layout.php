<!DOCTYPE html>
<html data-bs-theme="light" lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title><?= $this->renderSection('title'); ?> &mdash; PENGKATDES</title>

        <!-- Styles/CSS -->
        <?= $this->include('layouts/includes/styles') ?>
    </head>

    <body id="page-top">
        <div id="wrapper">
            <!-- Sidebar/Sidemenu -->
            <?= $this->include('layouts/includes/sidebar') ?>
            <div class="bg-body d-flex flex-column" id="content-wrapper">
                <!-- Navbar -->
                <?= $this->include('layouts/includes/navbar') ?>
                <div id="content">
                    <!-- Main Konten -->
                    <?= $this->renderSection('content'); ?>
                </div>
                <!-- Footer -->
                <?= $this->include('layouts/includes/footer'); ?>
            </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="logoutModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="logoutModalLabel">Siap untuk keluar?</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Pilih "Keluar" di bawah ini jika Anda siap untuk mengakhiri sesi Anda saat ini.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                        <a href="<?= base_url('auth/logout') ?>" class="btn btn-danger">Keluar</a>
                    </div>
                </div>
            </div>
        </div>


        <!-- Scripts/JS -->
        <?= $this->include('layouts/includes/scripts') ?>
    </body>

</html>