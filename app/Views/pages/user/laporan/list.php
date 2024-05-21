<?=$this->extend('layouts/users/base_layout')?>
<?=$this->section('content')?>
<div class="container">
    <a href="<?=base_url('user/datalaporan/buat')?>" class="btn btn-primary mb-3"><i class="fa fa-plus me-2"></i>Buat
        Laporan</a>
    <div class="card">
        <div class="card-header">List Laporan Yang Sudah di Buat</div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Judul Laporan</th>
                            <th>Status Laporan</th>
                            <th>Tanggal</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;foreach ($pengaduan as $row): ?>
                        <tr>
                            <td><?=$no++?></td>
                            <td><?=$row->judul_laporan?></td>
                            <td>
                                <?php if ($row->status == 'baru'): ?>
                                <span class="badge bg-primary">Baru</span>
                                <?php elseif ($row->status == 'proses'): ?>
                                <span class="badge bg-info">Proses</span>
                                <?php elseif ($row->status == 'selesai'): ?>
                                <span class="badge bg-success">Selesai</span>
                                <?php endif;?>
                            </td>
                            <td><?=date('d-M-Y', strtotime($row->created_at))?></td>
                            <td>
                                <a href="<?=base_url('user/datalaporan/tanggapan/' . $row->id)?>"
                                    class="btn btn-sm btn-success position-relative"><i class="fa fa-message"></i>
                                    <?php if ($row->id_tanggapan != null): ?>
                                    <span
                                        class="position-absolute top-0 start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
                                        <span class="visually-hidden">New alerts</span>
                                    </span>
                                    <?php endif;?>
                                </a>
                                <a href="<?=base_url('user/datalaporan/lihat/' . $row->id)?>"
                                    class="btn btn-sm btn-info"><i class="fa fa-eye"></i></a>
                                <a href="<?=base_url('user/datalaporan/ubah/' . $row->id)?>"
                                    class="btn btn-sm btn-warning"><i class="fa fa-edit"></i></a>
                                <a href="<?=base_url('user/datalaporan/hapus/' . $row->id)?>"
                                    onclick="return confirmDeleteAlert(event, this)" class="btn btn-sm btn-danger"><i
                                        class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<?=$this->endSection();?>