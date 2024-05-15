<?=$this->extend('layouts/users/base_layout')?>
<?=$this->section('content')?>
<div class="container">
    <a href="<?=base_url('user/datalaporan')?>" class="btn btn-secondary mb-3">Kembali</a>
    <div class="card">
        <div class="card-header">Detail Laporan</div>
        <div class="card-body">
            <div class="form-group">
                <label for="" class="form-label">Judul Laporan</label>
                <input type="text" name="judul_laporan" id="judul_laporan" class="form-control" readonly
                    value="<?=$pengaduan->judul_laporan?>">
            </div>
            <div class="form-group">
                <label for="" class="form-label">Isi Laporan</label>
                <textarea name="isi_laporan" id="isi_laporan" class="form-control" readonly
                    rows="6"> <?=$pengaduan->isi_laporan?></textarea>
            </div>
            <div class="form-group">
                <label for="" class="form-label">Status Laporan</label>
                <input type="text" name="status" id="status" class="form-control" readonly
                    value="<?=$pengaduan->status?>">
            </div>
            <div class="form-group">
                <label for="" class="form-label">Foto</label>
                <div class="row overflow-x-auto">
                    <?php foreach ($foto as $f): ?>
                    <div class="col-md-3">
                        <img src="<?=base_url('uploads/pengaduan/id_' . $pengaduan->id . '/' . $f->foto)?>" alt=""
                            class="img-fluid">
                    </div>
                    <?php endforeach;?>
                </div>
            </div>
        </div>
        <div class="card-footer">
            <a href="<?=base_url('user/datalaporan/ubah/' . $pengaduan->id)?>" class="btn btn-warning">Ubah Laporan</a>
            <a href="<?=base_url('user/datalaporan/hapus/' . $pengaduan->id)?>" id="hapusData"
                class="btn btn-danger">Hapus
                Laporan</a>
        </div>
    </div>

</div>
</div>
<?=$this->endSection();?>