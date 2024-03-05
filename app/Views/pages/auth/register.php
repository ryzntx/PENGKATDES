<?= $this->extend('layouts/base_auth'); ?>
<?= $this->section('title') ?>Mendaftar<?= $this->endSection(); ?>
<?= $this->section('content') ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-7">
            <div class="card bg-body bg-opacity-75 bg-gradient shadow-lg o-hidden border-0 my-5 rounded-4">
                <div class="card-body p-0">
                    <div class="p-5">
                        <div class="text-center">
                            <h4 class="text-dark mb-4">Buat Akun Baru</h4>
                        </div>
                        <form class="user" method="post" action="<?= base_url('auth/registerAction') ?>">
                            <div class="mb-3">
                                <input type="text" name="nik" id="nik" class="form-control form-control-user"
                                    placeholder="NIK (Nomor Induk Kependudukan)" required>
                            </div>
                            <div class="mb-3">
                                <input type="text" name="nama" id="nama" class="form-control form-control-user"
                                    placeholder="Nama Lengkap" required>
                            </div>
                            <div class="mb-3">
                                <input type="text" name="username" id="username" class="form-control form-control-user"
                                    placeholder="Nama Pengguna" required>
                                <small class="ms-4">contoh: endangumasep</small>
                            </div>
                            <div class="mb-3">
                                <input type="text" name="telp" id="telp" class="form-control form-control-user"
                                    placeholder="Nomor Telepon/HP" required>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user"
                                        type="password" id="sandi" placeholder="Sandi" name="password"></div>
                                <div class="col-sm-6"><input class="form-control form-control-user" type="password"
                                        id="sandiConfirm" placeholder="Ulangi Sandi" name="password_repeat"></div>
                            </div><button class="btn btn-primary d-block btn-user w-100"
                                type="submit">Mendaftar</button>
                            <hr>
                        </form>
                        <div class="text-center"><a class="small" href="<?= base_url('auth/login') ?>">Sudah Memiliki
                                Akun? Masuk Disini!</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>