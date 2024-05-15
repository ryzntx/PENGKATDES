<?= $this->extend('layouts/base_layout') ?>
<?= $this->section('title') ?>Manajemen Akun<?= $this->endSection() ?>
<?= $this->section('content') ?>
<div class="container-fluid">
    <div class="d-sm-flex justify-content-between align-content-center align-items-center my-4">
        <h3 class="text-body-emphasis mb-0">Manajemen Akun</h3>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb my-auto">
                <li class="breadcrumb-item"><a href="#">Admin</a></li>
                <li class="breadcrumb-item"><a href="#">Manajemen Akun</a></li>
                <li class="breadcrumb-item active" aria-current="page">Data</li>
            </ol>
        </nav>
    </div>
    <a href="<?= base_url('admin/manajemenAkun/tambah') ?>" class="btn btn-primary mb-4"><i
            class="fa fa-plus me-2"></i>Tambah Data</a>
    <div class="card">
        <div class="card-header">Data Akun</div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr class="text-center">
                            <th scope="col">#</th>
                            <th scope="col">NIK</th>
                            <th scope="col">Nama</th>
                            <th scope="col">Nama Pengguna</th>
                            <th scope="col">No. Telp</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($data as $row) : ?>
                        <tr>
                            <th scope="row" class="text-center"><?= $no++ ?></th>
                            <td><?= $row->nik ?></td>
                            <td><?= $row->nama ?></td>
                            <td><?= $row->username ?></td>
                            <td><?= $row->telp ?></td>
                            <td class="text-center">
                                <a href="<?= base_url('admin/manajemenAkun/lihat/' . $row->id) ?>"
                                    class="btn btn-sm btn-info"><i class="fa fa-eye"></i></a>
                                <a href="<?= base_url('admin/manajemenAkun/ubah/' . $row->id) ?>"
                                    class="btn btn-sm btn-warning"><i class="fa fa-edit"></i></a>
                                <?php if ($row->id != session()->get('id_user')) : ?>
                                <a href="<?= base_url('admin/manajemenAkun/hapus/' . $row->id) ?>" id="hapusData"
                                    class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                                <?php endif; ?>
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