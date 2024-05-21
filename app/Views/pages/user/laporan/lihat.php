<?=$this->extend('layouts/users/base_layout')?>
<?=$this->section('content')?>
<div class="container">
    <a href="<?=base_url('user/datalaporan')?>" class="btn btn-secondary mb-3"><i
            class="fa fa-arrow-left me-2"></i>Kembali</a>
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
                <div class="file-loading">
                    <input id="uploadFoto" name="foto[]" type="file" multiple>
                </div>
            </div>
        </div>
        <div class="card-footer">
            <a href="<?=base_url('user/datalaporan/tanggapan/' . $pengaduan->id)?>"
                class="btn btn-sm btn-success position-relative"><i class="fa fa-message"></i> Tanggapan
                <?php if ($pengaduan->id_tanggapan != null): ?>
                <span
                    class="position-absolute top-0 start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
                    <span class="visually-hidden">New alerts</span>
                </span>
                <?php endif;?>
            </a>
            <a href="<?=base_url('user/datalaporan/ubah/' . $pengaduan->id)?>" class="btn btn-sm btn-warning"><i
                    class="fa fa-edit me-2"></i>Ubah Laporan</a>
            <a href="<?=base_url('user/datalaporan/hapus/' . $pengaduan->id)?>" id="hapusData"
                class="btn btn-sm btn-danger"><i class="fa fa-trash me-2"></i>Hapus
                Laporan</a>
        </div>
    </div>
</div>
<?=$this->endSection();?>

<?=$this->section('script')?>

<script>
$("#uploadFoto").fileinput({
    theme: 'bs5',
    overwriteInitial: false,
    initialPreview: [
        <?php foreach ($foto as $f): ?> "<?=base_url('uploads/pengaduan/id_' . $pengaduan->id . '/' . $f->foto)?>",
        <?php endforeach;?>
    ],
    initialPreviewConfig: [
        <?php foreach ($foto as $f): ?> {
            caption: '<?=$f->foto?>',
            size: '<?=filesize('uploads/pengaduan/id_' . $pengaduan->id . '/' . $f->foto)?>',
            width: '120px',
            key: '<?=$f->id?>',
            downloadUrl: '<?=base_url('uploads/pengaduan/id_' . $pengaduan->id . '/' . $f->foto)?>',
        },
        <?php endforeach;?>
    ],
    initialPreviewShowDelete: false,
    initialPreviewAsData: true, // identify if you are sending preview data only and not the raw markup
    initialPreviewFileType: 'image', // image is the default and can be overridden in config below
    showUpload: false,
    showCaption: false,
    browseOnZoneClick: false,
    showRemove: false,
    showClose: false,
    showBrowse: false,
    dropZoneTitle: 'Tidak ada Foto!',
    // dropZoneEnabled: false
});
</script>

<?=$this->endSection()?>