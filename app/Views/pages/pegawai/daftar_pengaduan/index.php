<?=$this->extend('layouts/base_layout')?>
<?=$this->section('title')?>Daftar Pengaduan<?=$this->endSection()?>
<?=$this->section('content')?>
<div class="container-fluid">
    <div class="d-sm-flex justify-content-between align-content-center align-items-center my-4">
        <h3 class="text-body-emphasis mb-0">Daftar Pengaduan / Laporan</h3>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb my-auto">
                <li class="breadcrumb-item"><a href="#">Pegawai</a></li>
                <li class="breadcrumb-item active">Daftar Pengaduan / Laporan</li>
            </ol>
        </nav>
    </div>
    <div class="card">
        <div class="card-header">
            <div class="d-flex justify-content-between align-items-center">
                <h6 class="text-body-emphasis mb-0">Daftar Pengaduan / Laporan</h6>
                <!-- <a href="<?=base_url('pegawai/tanggapanPengaduan/tambah')?>" class="btn btn-primary"><i
                        class="fa fa-plus me-2"></i>Tambah Data</a> -->
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr class="text-center">
                            <th scope="col">#</th>
                            <th scope="col">NIK</th>
                            <th scope="col">Nama</th>
                            <th scope="col">Tanggal</th>
                            <th scope="col">Judul Pengaduan / Laporan</th>
                            <th scope="col">Status</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($pengaduan as $row): ?>
                        <tr>
                            <th scope="row" class="text-center"><?=$no++?></th>
                            <td><?=$row->nik?></td>
                            <td><?=$row->nama?></td>
                            <td><?=date('d-M-Y', strtotime($row->created_at))?></td>
                            <td><?=$row->judul_laporan?></td>
                            <td class="text-center">
                                <?php if ($row->status == 'baru'): ?>
                                <span class="badge bg-warning text-dark">Baru</span>
                                <?php elseif ($row->status == 'proses'): ?>
                                <span class="badge bg-info text-dark">Proses</span>
                                <?php elseif ($row->status == 'selesai'): ?>
                                <span class="badge bg-success text-dark">Selesai</span>
                                <?php endif;?>
                            </td>
                            <td class="text-center">
                                <a href="<?=base_url('pegawai/dataPengaduan/lihat/' . $row->id)?>"
                                    class="btn btn-sm btn-info"><i class="fa fa-eye"></i></a>
                                <a href="<?=base_url('pegawai/dataPengaduan/tanggap/' . $row->id)?>"
                                    class="btn btn-sm btn-warning"><i class="fa fa-comment"></i></a>
                                <a href="<?=base_url('pegawai/dataPengaduan/hapusPengaduan/' . $row->id)?>"
                                    class="btn btn-danger btn-sm" onclick="return confirmDeleteAlert(event, this)"><i
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