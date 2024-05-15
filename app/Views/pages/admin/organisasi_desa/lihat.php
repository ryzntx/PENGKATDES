<?= $this->extend('layouts/base_layout') ?>
<?= $this->section('title') ?>Manajemen Struktur Organisasi<?= $this->endSection() ?>
<?= $this->section('content') ?>
<div class="container-fluid">
    <div class="d-sm-flex justify-content-between align-items-center my-4">
        <h3 class="text-body-emphasis mb-0">Manajemen Struktur Organisasi</h3>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb my-auto">
                <li class="breadcrumb-item"><a href="#">Admin</a></li>
                <li class="breadcrumb-item"><a href="#">Manajemen Struktur Organisasi</a></li>
                <li class="breadcrumb-item active" aria-current="page">Detail Data</li>
            </ol>
        </nav>
    </div>
    <a href="<?= base_url('admin/organisasiDesa') ?>" class="btn btn-secondary mb-4"><i
            class="fa fa-arrow-left me-2"></i>Kembali</a>
    <div class="card">
        <div class="card-header">Detail Data Pegawai</div>

        <div class="card-body">
            <div class="form-group">
                <label for="" class="form-label">NIP</label>
                <input type="text" class="form-control" name="nip" id="nip" placeholder="Masukkan NIP"
                    value="<?= $data->nip ?>" readonly>
            </div>
            <div class="form-group">
                <label for="" class="form-label">Nama</label>
                <input type="text" class="form-control" name="nama" id="nama" placeholder="Masukkan Nama"
                    value="<?= $data->nama ?>" readonly>
            </div>
            <div class="form-group">
                <label for="" class="form-label">Jabatan</label>
                <input type="text" class="form-control" name="jabatan" id="jabatan" placeholder="Masukkan Jabatan"
                    value="<?= $data->jabatan ?>" readonly>
            </div>
        </div>
        <div class="card-footer">
            <a href="<?= base_url('admin/organisasiDesa/ubah/' . $data->id) ?>" class="btn btn-warning"><i
                    class="fa fa-edit me-2"></i>Ubah</a>

            <a href="<?= base_url('admin/organisasiDesa/hapus/' . $data->id) ?>" id="hapusData"
                class="btn btn-danger"><i class="fa fa-trash me-2"></i>Hapus</a>

        </div>
    </div>
</div>
<?= $this->endSection(); ?>