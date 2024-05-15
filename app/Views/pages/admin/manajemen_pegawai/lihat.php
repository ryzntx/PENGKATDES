<?= $this->extend('layouts/base_layout') ?>
<?= $this->section('title') ?>Manajemen Akun<?= $this->endSection() ?>
<?= $this->section('content') ?>
<div class="container-fluid">
    <div class="d-sm-flex justify-content-between align-items-center my-4">
        <h3 class="text-body-emphasis mb-0">Manajemen Akun</h3>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb my-auto">
                <li class="breadcrumb-item"><a href="#">Admin</a></li>
                <li class="breadcrumb-item"><a href="#">Manajemen Akun</a></li>
                <li class="breadcrumb-item active" aria-current="page">Detail Data</li>
            </ol>
        </nav>
    </div>
    <a href="<?= base_url('admin/manajemenAkun') ?>" class="btn btn-secondary mb-4"><i
            class="fa fa-arrow-left me-2"></i>Kembali</a>
    <div class="card">
        <div class="card-header">Detail Data Akun</div>
        <div class="card-body">
            <div class="form-group">
                <label for="" class="form-label">NIK</label>
                <input type="text" class="form-control" name="nik" id="nik" placeholder="Masukkan NIK"
                    value="<?= $data->nik ?>" readonly>
            </div>
            <div class="form-group">
                <label for="" class="form-label">Nama</label>
                <input type="text" class="form-control" name="nama" id="nama" placeholder="Masukkan Nama"
                    value="<?= $data->nama ?>" readonly>
            </div>
            <div class="form-group">
                <label for="" class="form-label">Nama Pengguna</label>
                <input type="text" class="form-control" name="nama_pengguna" id="nama_pengguna"
                    placeholder="Masukkan Nama Pengguna" value="<?= $data->username ?>" readonly>
            </div>
            <div class="form-group">
                <label for="" class="form-label">No. Telp</label>
                <input type="text" class="form-control" name="no_telp" id="no_telp" placeholder="Masukkan No. Telp"
                    value="<?= $data->telp ?>" readonly>
            </div>
            <div class="form-group">
                <label for="" class="form-label">Level</label>
                <input type="text" class="form-control" name="level" id="level" placeholder="Masukkan Level"
                    value="<?= $data->level ?>" readonly>
            </div>
        </div>
        <div class="card-footer">
            <a href="<?= base_url('admin/manajemenAkun/ubah/' . $data->id) ?>" class="btn btn-warning"><i
                    class="fa fa-edit me-2"></i>Ubah</a>
            <?php if ($data->id != session()->get('id_user')) : ?>
            <a href="<?= base_url('admin/manajemenAkun/hapus/' . $data->id) ?>" id="hapusData" class="btn btn-danger"><i
                    class="fa fa-trash me-2"></i>Hapus</a>
            <?php endif; ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>