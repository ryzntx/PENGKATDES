<?= $this->extend('layouts/base_layout'); ?>
<?= $this->section('title'); ?>
Log Aktivitas
<?= $this->endSection(); ?>
<?= $this->section('content'); ?>
<div class="container-fluid">
    <h3 class="text-body-emphasis mb-4">Log Aktivitas</h3>
    <div class="card shadow">
        <div class="card-header py-2 d-flex flex-row align-content-center justify-content-center align-items-center">
            <p class="col m-0 fw-bold">Data Log</p>
            <div class="d-flex flex-row gap-2 justify-content-end">
                <div class="col">
                    <select name="users" id="users" class="form-control">
                        <option value="">Pilih User</option>
                        <?php foreach ($users as $user) : ?>
                        <option value="<?= $user->id ?>"><?= $user->nama ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="col">
                    <input type="date" name="tanggal_awal" id="tanggal_awal" class="form-control">
                </div>
                <div class="col">
                    <input type="date" name="tanggal_akhir" id="tanggal_akhir" class="form-control">
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive table mt-2" role="grid">
                <table class="table my-0" id="logTable">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tanggal</th>
                            <th>Waktu</th>
                            <th>Nama Pengguna</th>
                            <th>Deskripsi</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>

                </table>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>
<?= $this->section('addon-scripts'); ?>
<script>
$(function() {
    let dataTable = $('#logTable').DataTable({
        // responsive: true,
        processing: true,
        serverSide: true,
        ajax: '<?= base_url('logs/jsonDataTable') ?>',
    });
});
</script>
<?= $this->endSection(); ?>