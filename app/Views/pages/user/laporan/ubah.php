<?=$this->extend('layouts/users/base_layout')?>
<?=$this->section('content')?>
<div class="container">
    <a href="<?=base_url('user/datalaporan')?>" class="btn btn-secondary mb-3"><i
            class="fa fa-arrow-left me-2"></i>Kembali</a>
    <div class="card">
        <div class="card-header">Ubah Laporan</div>
        <form action="<?=base_url('user/datalaporan/ubah/' . $pengaduan->id)?>" method="post"
            enctype="multipart/form-data">
            <?=csrf_field()?>
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
                    <label for="" class="form-label">Foto</label>
                    <div class="file-loading">
                        <input id="uploadFoto" name="foto[]" type="file" multiple>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-warning"><i class="fa fa-edit me-2"></i>Ubah Laporan</button>
                <a href="<?=base_url('user/datalaporan')?>" class="btn btn-secondary">
                    <i class="fa fa-arrow-left me-2"></i>Kembali
                </a>
            </div>
        </form>
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
            url: '<?=base_url('user/datalaporan/hapusfoto/' . $f->id)?>',
            key: '<?=$f->id?>',
            downloadUrl: '<?=base_url('uploads/pengaduan/id_' . $pengaduan->id . '/' . $f->foto)?>',
        },
        <?php endforeach;?>
    ],
    initialPreviewShowDelete: true,
    initialPreviewAsData: true, // identify if you are sending preview data only and not the raw markup
    initialPreviewFileType: 'image', // image is the default and can be overridden in config below
    uploadUrl: '<?=base_url('user/datalaporan/uploadfoto/' . $pengaduan->id)?>',
    showUpload: true,
    showCaption: true,
    browseOnZoneClick: true,
    showRemove: false,
    showClose: false,
    maxFileCount: 10,
    allowedFileExtensions: ['jpg', 'jpeg', 'png'],
    msgPlaceholder: 'Pilih {files} untuk di upload...',
});
</script>
<?=$this->endSection();?>