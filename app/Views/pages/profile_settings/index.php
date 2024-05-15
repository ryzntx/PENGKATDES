<?php if (session()->get('level') == 'admin'): ?>
<?=$this->extend('layouts/base_layout')?>
<?php else: ?>
<?=$this->extend('layouts/users/base_layout')?>
<?php endif;?>
<?=$this->section('title')?>Manajemen Akun<?=$this->endSection()?>
<?=$this->section('content')?>
<div class="container">
    <h3 class="mb-4">Pengaturan Profil</h3>
    <div class="row mb-3">
        <div class="row">
            <div class="col-6">
                <div class="card shadow mb-3">
                    <div class="card-header bg-body-tertiary py-3">
                        <p class=" m-0 fw-bold">Identitas Pribadi</p>
                    </div>
                    <form action="<?=base_url('profilesettings/updatedata')?>" method="post">
                        <div class="card-body">
                            <?=csrf_field()?>
                            <div class="form-group">
                                <label for="" class="form-label">NIK</label>
                                <input type="text" name="nik" id="nik" class="form-control" required
                                    value="<?=$user->nik?>" readonly>
                            </div>
                            <div class="form-group">
                                <label for="" class="form-label">Nama Lengkap</label>
                                <input type="text" name="nama" id="nama" class="form-control" required
                                    value="<?=$user->nama?>" readonly>
                            </div>
                            <div class="form-group row">
                                <div class="col">
                                    <label for="" class="form-label">Nama Pengguna</label>
                                    <input type="text" name="username" id="username" class="form-control" required
                                        value="<?=old('username') ?? $user->username?>">
                                </div>
                                <div class="col">
                                    <label for="" class="form-label">E-Mail</label>
                                    <input type="email" name="email" id="email" class="form-control" required
                                        value="<?=old('email') ?? $user->email?>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="form-label">No. Telepon</label>
                                <input type="text" name="telp" id="telp" class="form-control" required
                                    value="<?=old('telp') ?? $user->telp?>">
                            </div>
                            <div class="form-group">
                                <label for="" class="form-label">Alamat</label>
                                <textarea name="alamat" id="alamat"
                                    class="form-control"><?=old('alamat') ?? $user->alamat?></textarea>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-primary btn-sm" type="submit"><i class="fa fa-save me-2"></i>Simpan
                                Perubahan</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-6">
                <div class="card shadow">
                    <div class="card-header bg-body-tertiary py-3">
                        <p class=" m-0 fw-bold">Pengaturan Sandi</p>
                    </div>
                    <form action="<?=base_url('profilesettings/updatepassword')?>" method="post">
                        <div class="card-body">
                            <?=csrf_field()?>
                            <div class="form-group">
                                <label for="" class="form-label">Sandi Lama</label>
                                <input type="password" name="old_password" id="old_password" class="form-control"
                                    required placeholder="Masukan Sandi Lama">
                            </div>
                            <div class="row form-group">
                                <div class="col">
                                    <label for="" class="form-label">Sandi Baru</label>
                                    <input type="password" name="new_password" id="new_password" class="form-control"
                                        required placeholder="Masukan Sandi Baru">
                                </div>
                                <div class="col">
                                    <label for="" class="form-label">Konfirmasi Sandi Baru</label>
                                    <input type="password" name="confirm_password" id="confirm_password"
                                        class="form-control" required placeholder="Konfirmasi Sandi Baru">
                                </div>
                            </div>

                        </div>
                        <div class="card-footer">
                            <button class="btn btn-primary btn-sm" type="submit"><i
                                    class="fa fa-save me-2"></i>Perbaharui Sandi</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?=$this->endSection();?>