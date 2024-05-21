<?=$this->extend('layouts/base_layout')?>
<?=$this->section('title')?>Lihat Pengaduan<?=$this->endSection()?>
<?=$this->section('content')?>
<div class="container-fluid">
    <div class="d-sm-flex justify-content-between align-content-center align-items-center my-4">
        <h3 class="text-body-emphasis mb-0">Daftar Pengaduan / Laporan</h3>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb my-auto">
                <li class="breadcrumb-item"><a href="#">Pegawai</a></li>
                <li class="breadcrumb-item "><a href="#">Daftar Pengaduan / Laporan</a></li>
                <li class="breadcrumb-item active">Lihat</li>
            </ol>
        </nav>
    </div>
    <a href="<?=base_url('pegawai/dataPengaduan')?>" class="btn btn-secondary mb-4"><i
            class="fa fa-arrow-left me-2"></i>Kembali</a>
    <div class="card">
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
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">NIK</label>
                <div class="col-sm-10">
                    <input type="text" name="nik" id="nik" class="form-control" readonly value="<?=$pengaduan->nik?>">
                </div>
            </div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Nama</label>
                <div class="col-sm-10">
                    <input type="text" name="nama" id="nama" class="form-control" readonly
                        value="<?=$pengaduan->nama?>">
                </div>
            </div>
            <!-- <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Judul Laporan</label>
                <div class="col-sm-10">
                    <input type="text" name="judul_laporan" id="judul_laporan" class="form-control" readonly
                        value="<?=$pengaduan->judul_laporan?>">
                </div>
            </div> -->
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Tanggal Laporan</label>
                <div class="col-sm-10">
                    <input type="date" name="tanggal_laporan" id="tanggal_laporan" class="form-control" readonly
                        value="<?=date('Y-m-d', strtotime($pengaduan->created_at))?>">
                </div>
            </div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Status Laporan</label>
                <div class="col-sm-2">
                    <?php if ($pengaduan->status == 'baru'): ?>
                    <span class="badge text-bg-warning">Baru</span>
                    <?php elseif ($pengaduan->status == 'proses'): ?>
                    <span class="badge text-bg-info">Proses</span>
                    <?php elseif ($pengaduan->status == 'selesai'): ?>
                    <span class="badge text-bg-success">Selesai</span>
                    <?php endif;?>
                </div>
            </div>
        </div>
    </div>
    <div class="card my-3">
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
        <div class="card-footer">
            <a href="<?=base_url('pegawai/dataPengaduan/tanggap/' . $pengaduan->id)?>" class="btn btn-warning btn-sm"><i
                    class="fa fa-comment me-2"></i>Tanggapi</a>
            <!-- <a href="" class="btn btn-info btn-sm"><i class="fa fa-file-pdf me-2"></i>Export menjadi PDF</a> -->
        </div>
    </div>
</div>

<?=$this->endSection()?>

<?=$this->section('addon-scripts')?>

<script>
$('#isi_laporan').on('input', function() {
    this.style.height = 'auto';

    this.style.height =
        (this.scrollHeight) + 'px';
});
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