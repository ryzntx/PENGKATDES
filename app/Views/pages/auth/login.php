<?= $this->extend('layouts/base_auth'); ?>
<?= $this->section('title') ?>Masuk<?= $this->endSection(); ?>
<?= $this->section('content') ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <div class="card bg-body bg-opacity-75 bg-gradient shadow-lg o-hidden border-0 my-5 rounded-4">
                <div class="card-body p-0">
                    <div class="p-5">
                        <div class="text-center">
                            <h4 class="text-dark mb-4">Selamat Datang!</h4>
                        </div>
                        <?php if (session('error') !== null) : ?>
                        <div class="alert alert-danger" role="alert"><?= session('error') ?></div>
                        <?php elseif (session('errors') !== null) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?php if (is_array(session('errors'))) : ?>
                            <?php foreach (session('errors') as $error) : ?>
                            <?= $error ?>
                            <br>
                            <?php endforeach ?>
                            <?php else : ?>
                            <?= session('errors') ?>
                            <?php endif ?>
                        </div>
                        <?php endif ?>

                        <?php if (session('message') !== null) : ?>
                        <div class="alert alert-success" role="alert"><?= session('message') ?></div>
                        <?php endif ?>
                        <form class="user" action="<?= base_url('auth/loginAction') ?>" method="post">
                            <div class="mb-3"><input class="form-control form-control-user" type="text"
                                    id="inputUsername" aria-describedby="emailHelp" placeholder="Masukan Nama Pengguna"
                                    name="username" required></div>
                            <div class="mb-3"><input class="form-control form-control-user" type="password"
                                    id="inputPassword" placeholder="Sandi" name="password" required></div>
                            <div class="mb-3">
                                <div class="custom-control custom-checkbox small">
                                    <div class="form-check"><input class="form-check-input custom-control-input"
                                            type="checkbox" id="formCheck-1"><label
                                            class="form-check-label custom-control-label" for="formCheck-1">Ingat
                                            saya</label></div>
                                </div>
                            </div><button class="btn btn-primary d-block btn-user w-100" type="submit">Masuk</button>
                            <hr>
                        </form>
                        <!-- <div class="text-center"><a class="small" href="forgot-password.html">Lupa Sandi?</a></div> -->
                        <div class="text-center"><a class="small" href="<?= base_url('auth/register') ?>">Buat Akun</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>