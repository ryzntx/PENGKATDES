<?= $this->extend('layouts/base_layout') ?>
<?= $this->section('title') ?>Manajemen Struktur Organisasi<?= $this->endSection() ?>
<?= $this->section('content') ?>
<div class="container-fluid">
    <div class="d-sm-flex justify-content-between align-content-center align-items-center my-4">
        <h3 class="text-body-emphasis mb-0">Manajemen Struktur Organisasi</h3>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb my-auto">
                <li class="breadcrumb-item"><a href="#">Admin</a></li>
                <li class="breadcrumb-item"><a href="#">Manajemen Struktur Organisasi</a></li>
                <li class="breadcrumb-item active" aria-current="page">Data</li>
            </ol>
        </nav>
    </div>
    <a href="<?= base_url('admin/organisasiDesa/tambah') ?>" class="btn btn-primary mb-4"><i
            class="fa fa-plus me-2"></i>Tambah Data</a>
    <div class="card">
        <div class="card-header">Struktur Organisasi</div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr class="text-center">
                            <th scope="col">#</th>
                            <th scope="col">NIP</th>
                            <th scope="col">Nama</th>
                            <th scope="col">Jabatan</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($data as $item) : ?>
                        <tr>
                            <td scope="row" class="text-center"><?= ++$no ?></td>
                            <td><?= $item->nip ?></td>
                            <td><?= $item->nama ?></td>
                            <td><?= $item->jabatan ?></td>
                            <td class="text-center">
                                <a href="<?= base_url('admin/organisasiDesa/lihat/' . $item->id) ?>"
                                    class="btn btn-info btn-sm"><i class="fa fa-eye"></i></a>
                                <a href="<?= base_url('admin/organisasiDesa/ubah/' . $item->id) ?>"
                                    class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                <a href="<?= base_url('admin/organisasiDesa/hapus/' . $item->id) ?>"
                                    class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                        <?php endforeach; ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>