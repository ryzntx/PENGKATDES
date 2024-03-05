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

        <!-- Scripts/JS -->
        <?= $this->include('layouts/includes/scripts') ?>
    </body>

</html>