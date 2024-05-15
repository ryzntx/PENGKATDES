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
                <li class="breadcrumb-item active" aria-current="page">Tambah Data</li>
            </ol>
        </nav>
    </div>
    <a href="<?= base_url('admin/manajemenAkun') ?>" class="btn btn-secondary mb-4"><i
            class="fa fa-arrow-left me-2"></i>Kembali</a>
    <?php if (session('errors')) : ?>
    <div class="alert alert-danger">
        <ul>
            <?php foreach (session('errors') as $error) : ?>
            <li><?= $error ?></li>
            <?php endforeach; ?>
        </ul>
    </div>
    <?php endif; ?>
    <div class="card">
        <div class="card-header">Tambah Data Akun</div>
        <form action="<?= base_url('admin/manajemenAkun/tambah') ?>" method="post">

            <div class="card-body">
                <div class="form-group">
                    <label for="" class="form-label">NIK</label>
                    <input type="text" class="form-control <?= (session('errors.nik')) ? 'is_invalid' : '' ?>"
                        name="nik" id="nik" placeholder="Masukkan NIK" value="<?= old('nik') ?>" required>
                    <?php if (session('errors.nik')) : ?>
                    <div class="invalid-feedback d-block">
                        <?= session('errors.nik') ?>
                    </div>
                    <?php endif; ?>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Nama</label>
                    <input type="text" class="form-control <?= (session('errors.nama')) ? 'is_invalid' : '' ?>"
                        name="nama" id="nama" placeholder="Masukkan Nama" value="<?= old('nama') ?>" required>
                    <?php if (session('errors.nama')) : ?>
                    <div class="invalid-feedback d-block">
                        <?= session('errors.nama') ?>
                    </div>
                    <?php endif; ?>

                </div>
                <div class="form-group">
                    <label for="" class="form-label">Nama Pengguna</label>
                    <input type="text" class="form-control <?= (session('errors.nama_pengguna')) ? 'is_invalid' : '' ?>"
                        name="nama_pengguna" id="nama_pengguna" placeholder="Masukkan Nama Pengguna"
                        value="<?= old('nama_pengguna') ?>" required>
                    <?php if (session('errors.nama_pengguna')) : ?>
                    <div class="invalid-feedback d-block">
                        <?= session('errors.nama_pengguna') ?>
                    </div>
                    <?php endif; ?>
                </div>
                <div class="row form-group">
                    <div class="col-6">
                        <label for="" class="form-label">Kata Sandi</label>
                        <input type="password"
                            class="form-control <?= (session('errors.kata_sandi')) ? 'is_invalid' : '' ?>"
                            name="kata_sandi" id="kata_sandi" placeholder="Masukkan Kata Sandi" required>
                        <?php if (session('errors.kata_sandi')) : ?>
                        <div class="invalid-feedback d-block">
                            <?= session('errors.kata_sandi') ?>
                        </div>
                        <?php endif; ?>
                    </div>
                    <div class="col-6">
                        <label for="" class="form-label">Konfirmasi Kata Sandi</label>
                        <input type="password" class="form-control" name="konfirmasi_kata_sandi"
                            id="konfirmasi_kata_sandi" placeholder="Masukkan Konfirmasi Kata Sandi" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">No. Telp</label>
                    <input type="text" class="form-control <?= (session('errors.no_telp')) ? 'is_invalid' : '' ?>"
                        name="no_telp" id="no_telp" placeholder="Masukkan No. Telp" value="<?= old('no_telp') ?>"
                        required>
                    <?php if (session('errors.no_telp')) : ?>
                    <div class="invalid-feedback d-block">
                        <?= session('errors.no_telp') ?>
                    </div>
                    <?php endif; ?>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Level</label>
                    <select name="level" id="level"
                        class="form-control <?= (session('errors.level')) ? 'is_invalid' : '' ?>" required>
                        <option value="">Pilih Level</option>
                        <option value="admin">Admin</option>
                        <option value="petugas">Pegawai</option>
                    </select>
                    <?php if (session('errors.level')) : ?>
                    <div class="invalid-feedback d-block">
                        <?= session('errors.level') ?>
                    </div>
                    <?php endif; ?>
                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary"><i class="fa fa-save me-2"></i>Simpan</button>
            </div>
        </form>
    </div>
</div>
<?= $this->endSection(); ?>