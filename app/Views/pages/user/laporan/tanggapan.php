<?=$this->extend('layouts/users/base_layout')?>
<?=$this->section('content')?>
<div class="container">
    <a href="<?=base_url('user/datalaporan')?>" class="btn btn-secondary mb-3"><i
            class="fa fa-arrow-left me-2"></i>Kembali</a>
    <div class="card my-3">
        <div class="card-header">

            <h5 class="text-body-emphasis mb-0"><small>Detail Laporan / Pengaduan</small> <br>
                <strong><?=$pengaduan->judul_laporan?></strong>
                <?php if ($pengaduan->status == 'baru'): ?>
                <span class="badge text-bg-warning">Baru</span>
                <?php elseif ($pengaduan->status == 'proses'): ?>
                <span class="badge text-bg-info">Proses</span>
                <?php elseif ($pengaduan->status == 'selesai'): ?>
                <span class="badge text-bg-success">Selesai</span>
                <?php endif;?>
            </h5>


        </div>
        <div class="card-body">
            <div class="form-group">
                <label for="" class="form-label">Isi Laporan</label>
                <textarea name="isi_laporan" id="isi_laporan" class="form-control"
                    readonly> <?=$pengaduan->isi_laporan?></textarea>
            </div>
            <div class="form-group">
                <label for="" class="form-label">Foto</label>
                <div class="file-loading">
                    <input id="uploadFoto" name="foto[]" type="file" multiple>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <h5 class="text-body-emphasis mb-0"><small>Tanggapan</small></h5>
        </div>
        <div class="card-body">
            <div class="form-group">
                <label for="" class="form-label">Isi Tanggapan</label>
                <textarea name="isi_tanggapan" id="isi_tanggapan" class="form-control"
                    readonly><?=$pengaduan->isi_tanggapan ?? ""?></textarea>
            </div>
            <div class="form-group">
                <label for="" class="form-label">Status</label>
                <select name="status" id="status" class="form-select" disabled>
                    <option <?=($pengaduan->status == 'baru') ? 'selected' : ''?> value="baru">Laporan Baru</option>
                    <option <?=($pengaduan->status == 'proses') ? 'selected' : ''?> value="proses">Sedang di Proses
                    </option>
                    <option <?=($pengaduan->status == 'selesai') ? 'selected' : ''?> value="selesai">Laporan Selesai
                    </option>
                </select>
            </div>
            <!-- <div class="form-group">
                <label for="" class="form-label">Foto</label>
                <div class="file-loading">
                    <input id="uploadFoto" name="foto[]" type="file" multiple>
                </div> -->
        </div>
        <div class="card-footer">
            <a href="<?=base_url('user/datalaporan')?>" class="btn btn-secondary btn-sm"><i
                    class="fa fa-arrow-left me-2"></i>Kembali</a>
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
});
</script>

<?=$this->endSection()?>