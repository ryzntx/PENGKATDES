<!DOCTYPE html>
<html data-bs-theme="light" lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title><?= $this->renderSection('title') ?> &mdash; PENGKATDES</title>
        <link rel="stylesheet" href="<?= base_url('assets/bootstrap/css/bootstrap.min.css') ?>">
        <link rel="stylesheet" href="<?= base_url('assets/css/Nunito.css') ?>">
        <link rel="stylesheet" href="<?= base_url('assets/css/untitled.css') ?>">
    </head>

    <body class="d-block"
        style="background: url(&quot;<?= base_url('assets/img/n0walls_1508.jpg') ?>&quot;) center / cover;">
        <?= $this->renderSection('content') ?>
        <script src="<?= base_url('assets/js/jquery.min.js') ?>"></script>
        <script src="<?= base_url('assets/bootstrap/js/bootstrap.min.js') ?>"></script>
        <script src="<?= base_url('assets/js/bs-init.js') ?>"></script>
        <script src="<?= base_url('assets/js/theme.js') ?>"></script>
    </body>

</html>