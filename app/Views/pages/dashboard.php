<?= $this->extend('layouts/base_layout') ?>
<?= $this->section('title') ?>Beranda<?= $this->endSection() ?>
<?= $this->section('content') ?>
<div class="container-fluid">
    <div class="d-sm-flex justify-content-between align-items-center mb-4">
        <h3 class="text-body-emphasis mb-0">Beranda</h3>
    </div>
    <div class="alert alert-success">
        <p>Selamat Datang <strong><?= session('nama') ?></strong> di aplikasi PENGKATDES.</p>
    </div>
</div>
<?= $this->endSection(); ?>