<?=$this->extend('layouts/users/base_layout')?>
<?=$this->section('content')?>
<div class="container">
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        Selamat datang, <?=model('UserModel')->ambilDataLogin()->nama?>
    </div>
    <div class="accordion accordion-flush border-0 row row-cols-3" id="accordionFlushExample">
        <div class="accordion-item col border-bottom-0">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed text-bg-primary rounded" type="button"
                    data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false"
                    aria-controls="flush-collapseOne">
                    Total Laporan Hari Ini #<?=$laporan_hari_ini?>
                </button>
            </h2>
            <div id="flush-collapseOne" class="accordion-collapse collapse " data-bs-parent="#accordionFlushExample">
                <div class="accordion-body bg-body-tertiary rounded">
                    <?php if ($data_laporan_hari_ini): ?>
                    <?php foreach ($data_laporan_hari_ini as $row): ?>
                    <div class="card position-relative">
                        <div class="card-body">
                            <div class="card-title"><?=$row->judul_laporan?></div>
                            <div class="card-subtitle"><?=date('d-M-Y', strtotime($row->created_at))?></div>
                        </div>
                        <a href="<?=base_url('user/datalaporan/lihat/' . $row->id)?>" class="stretched-link"></a>
                    </div>
                    <?php endforeach;?>
                    <?php else: ?>
                    <div class="alert alert-warning" role="alert">
                        Tidak ada laporan hari ini
                    </div>
                    <?php endif;?>

                </div>
            </div>
        </div>
        <div class="accordion-item col border-bottom-0">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed text-bg-info rounded" type="button" data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                    Laporan di Proses #<?=$laporan_proses?>
                </button>
            </h2>
            <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body bg-body-tertiary rounded">
                    <?php if ($data_laporan_proses): ?>
                    <?php foreach ($data_laporan_proses as $row): ?>
                    <div class="card position-relative">
                        <div class="card-body">
                            <div class="card-title"><?=$row->judul_laporan?></div>
                            <div class="card-subtitle"><?=date('d-M-Y', strtotime($row->created_at))?></div>
                        </div>
                        <a href="<?=base_url('user/datalaporan/lihat/' . $row->id)?>" class="stretched-link"></a>
                    </div>
                    <?php endforeach;?>
                    <?php else: ?>
                    <div class="alert alert-warning" role="alert">
                        Tidak ada laporan yang sedang di proses
                    </div>
                    <?php endif;?>
                </div>
            </div>
        </div>
        <div class="accordion-item col">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed text-bg-success rounded" type="button"
                    data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false"
                    aria-controls="flush-collapseThree">
                    Laporan Selesai #<?=$laporan_selesai?>
                </button>
            </h2>
            <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body bg-body-tertiary rounded">
                    <?php if ($data_laporan_selesai): ?>
                    <?php foreach ($data_laporan_selesai as $row): ?>
                    <div class="card position-relative">
                        <div class="card-body">
                            <div class="card-title"><?=$row->judul_laporan?></div>
                            <div class="card-subtitle"><?=date('d-M-Y', strtotime($row->created_at))?></div>
                        </div>
                        <a href="<?=base_url('user/datalaporan/lihat/' . $row->id)?>" class="stretched-link"></a>
                    </div>
                    <?php endforeach;?>
                    <?php else: ?>
                    <div class="alert alert-warning" role="alert">
                        Tidak ada laporan yang selesai
                    </div>
                    <?php endif;?>
                </div>
            </div>
        </div>
    </div>
</div>
<?=$this->endSection();?>