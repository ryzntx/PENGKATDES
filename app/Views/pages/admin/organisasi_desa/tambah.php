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
                <li class="breadcrumb-item active" aria-current="page">Tambah Data</li>
            </ol>
        </nav>
    </div>
    <a href="<?= base_url('admin/organisasiDesa') ?>" class="btn btn-secondary mb-4"><i class="fa fa-arrow-left me-2"></i>Kembali</a>
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
        <div class="card-header">Tambah Data Organisasi</div>
        <form action="<?= base_url('admin/organisasiDesa/tambah') ?>" method="post" enctype="multipart/form-data">

            <div class="card-body">
                <div class="form-group">
                    <label for="" class="form-label">NIP</label>
                    <input type="text" class="form-control <?= (session('errors.nip')) ? 'is_invalid' : '' ?>" name="nip" id="nip" placeholder="Masukkan NIP" value="<?= old('nip') ?>" required>
                    <?php if (session('errors.nip')) : ?>
                        <div class="invalid-feedback d-block">
                            <?= session('errors.nip') ?>
                        </div>
                    <?php endif; ?>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Nama</label>
                    <input type="text" class="form-control <?= (session('errors.nama')) ? 'is_invalid' : '' ?>" name="nama" id="nama" placeholder="Masukkan Nama" value="<?= old('nama') ?>" required>
                    <?php if (session('errors.nama')) : ?>
                        <div class="invalid-feedback d-block">
                            <?= session('errors.nama') ?>
                        </div>
                    <?php endif; ?>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Jabatan</label>
                    <input type="text" class="form-control <?= (session('errors.jabatan')) ? 'is_invalid' : '' ?>" name="jabatan" id="jabatan" placeholder="Masukkan Jabatan" value="<?= old('jabatan') ?>" required>
                    <?php if (session('errors.jabatan')) : ?>
                        <div class="invalid-feedback d-block">
                            <?= session('errors.jabatan') ?>
                        </div>
                    <?php endif; ?>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Deskripsi</label>
                    <textarea name="deskripsi" id="deskripsi" cols="30" rows="5" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Upload Foto</label>
                    <input type="file" class="form-control <?= (session('errors.foto')) ? 'is_invalid' : '' ?>" name="foto" id="foto" value="<?= old('foto') ?>" required>
                    <?php if (session('errors.foto')) : ?>
                        <div class="invalid-feedback d-block">
                            <?= session('errors.foto') ?>
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