<?=$this->extend('layouts/users/base_layout')?>
<?=$this->section('content')?>
<div class="container">
    <div class="card">
        <div class="card-header">Masukan Semua Data di Bawah ini!</div>
        <form action="<?=base_url('user/datalaporan/buat')?>" method="post" enctype="multipart/form-data" id="formBuat">
            <?=csrf_field()?>
            <div class="card-body">
                <div class="form-group">
                    <label for="" class="form-label">Judul Laporan</label>
                    <input type="text" name="judul_laporan" id="judul_laporan" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Isi Laporan</label>
                    <textarea name="isi_laporan" id="isi_laporan" class="form-control" required rows="6"></textarea>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Upload Foto</label>
                    <div class="file-loading">
                        <input id="file-0a" class="file" type="file" name="foto[]" accept="images/*" multiple
                            data-show-upload="false" data-show-caption="true"
                            data-msg-placeholder="Pilih {files} untuk di upload...">
                    </div>
                    <small>* Dapat mengupload banyak file</small>
                </div>

                <!-- <div class="form-group">
                    <label for="" class="form-label">Lokasi Kejadian</label>
                    <input type="text" name="lokasi_kejadian" id="lokasi_kejadian" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Tanggal Kejadian</label>
                    <input type="date" name="tanggal_kejadian" id="tanggal_kejadian" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Waktu Kejadian</label>
                    <input type="time" name="waktu_kejadian" id="waktu_kejadian" class="form-control" required>
                </div> -->
                <!-- <div class="form-group">
                    <label for="" class="form-label">Kategori Laporan</label>
                    <select name="kategori_laporan" id="kategori_laporan" class="form-control" required>
                        <option value="">Pilih Kategori Laporan</option>
                        <option value="Pengaduan">Pengaduan</option>
                        <option value="Laporan">Laporan</option>
                    </select>
                </div> -->
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Buat Laporan</button>
            </div>
        </form>
    </div>
</div>
<?=$this->endSection();?>
<?=$this->section('script')?>

<script>
var id_pengaduan;
$("#formBuat").submit(function(e) {
    e.preventDefault();
    let data = $(this).serialize();
    $.ajax({
        url: '<?=base_url('user/datalaporan/buat')?>',
        type: 'POST',
        data: data,
        success: function(response) {
            id_pengaduan = response.id;
            var total = $('#file-0a').fileinput('getFilesCount', true);
            if (total == 0) {
                window.location.href = '<?=base_url('user/datalaporan/redirect')?>';
            } else {
                $('#file-0a').fileinput('upload');
            }
        }
    })
});

$("#file-0a").fileinput({
    theme: 'bs5',
    uploadUrl: `<?=base_url('user/datalaporan/uploadFotoN')?>`,
    uploadExtraData: function() {
        return {
            id: id_pengaduan
        };
    },
    allowedFileExtensions: ['jpg', 'jpeg', 'png'],
    overwriteInitial: false,
    maxFileSize: 2000,
    maxFileCount: 10,
    showUpload: false,
    showClose: false,
    showCaption: true,
    browseOnZoneClick: true,
    msgPlaceholder: 'Pilih {files} untuk di upload...',
    showAjaxErrorDetails: true,
}).on('fileuploaded', function(event, data, previewId, index, fileId) {
    window.location.href = '<?=base_url('user/datalaporan/redirect')?>';
}).on('fileuploaderror', function(event, data, msg) {
    var response = data.response;
    console.error(response);
}).on('fileselectnone', function(event) {
    console.error("Huh! No files were selected.");
});
</script>
<?=$this->endSection();?>