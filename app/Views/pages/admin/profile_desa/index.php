<?= $this->extend('layouts/base_layout') ?>
<?= $this->section('title') ?>Manajemen Profile Desa<?= $this->endSection() ?>
<?= $this->section('content') ?>
<div class="container-fluid">
    <div class="d-sm-flex justify-content-between align-content-center align-items-center my-4">
        <h3 class="text-body-emphasis mb-0">Manajemen Profile Desa</h3>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb my-auto">
                <li class="breadcrumb-item"><a href="#">Admin</a></li>
                <li class="breadcrumb-item"><a href="#">Manajemen Profile Desa</a></li>
                <li class="breadcrumb-item active" aria-current="page">Data</li>
            </ol>
        </nav>
    </div>
    <div class="card">
        <div class="card-header">Data Profile Desa</div>
        <form action="<?= base_url('admin/profileDesa/update') ?>" method="post">
            <div class="card-body">
                <div class="form-group">
                    <label for="" class="form-label">Tentang</label>
                    <textarea name="tentang" id="tentang" cols="30" rows="5"
                        class="form-control"><?= $data->tentang ?></textarea>
                </div>
                <div class="row form-group">
                    <div class="col">
                        <label for="" class="form-label">Visi</label>
                        <textarea name="visi" id="visi" cols="30" rows="5"
                            class="form-control"><?= $data->visi ?></textarea>
                    </div>
                    <div class="col">
                        <label for="" class="form-label">Misi</label>
                        <textarea name="misi" id="misi" cols="30" rows="5"
                            class="form-control"><?= $data->misi ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Sejarah</label>
                    <textarea name="sejarah" id="sejarah" cols="30" rows="5"
                        class="form-control"><?= $data->sejarah ?></textarea>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Geografis</label>
                    <textarea name="geografis" id="geografis" cols="30" rows="5"
                        class="form-control"><?= $data->geografis ?></textarea>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Demografis</label>
                    <textarea name="demografis" id="demografis" cols="30" rows="5"
                        class="form-control"><?= $data->demografis ?></textarea>
                </div>
            </div>
            <div class="card-footer">
                <button class="btn btn-primary"><i class="fa fa-save me-2"></i>Simpan</button>
            </div>
        </form>
    </div>
</div>
<?= $this->endSection(); ?>