<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\UserModel;
use CodeIgniter\HTTP\ResponseInterface;

class ManajemenAkun extends BaseController
{
    public function getIndex()
    {
        $data = [
            'no' => 1,
            'data' => model(UserModel::class)->where('level!=', 'user')->findAll()
        ];
        return view('pages/admin/manajemen_pegawai/index', $data);
    }

    public function getTambah()
    {
        return view('pages/admin/manajemen_pegawai/tambah');
    }

    public function postTambah()
    {
        // Data validation rules
        $rules = [
            'nik' => 'required|is_unique[users.nik]|numeric|exact_length[16]',
            'nama' => 'required|alpha_space',
            'nama_pengguna' => 'required|is_unique[users.username]|alpha_numeric|alpha_space|min_length[5]|max_length[255]',
            'kata_sandi' => 'required|min_length[8]|matches[konfirmasi_kata_sandi]|max_length[255]',
            'no_telp' => 'required|numeric',
            'level' => 'required|in_list[admin,petugas]'
        ];

        // Custom error messages
        $errors = [
            'nik' => [
                'required' => 'Kolom NIK harus diisi.',
                'is_unique' => 'Kolom NIK harus unik.',
                'numeric' => 'Kolom NIK harus berupa angka.',
                'exact_length' => 'Kolom NIK harus berjumlah 16 digit.'
            ],
            'nama' => [
                'required' => 'Kolom Nama harus diisi.',
                'alpha_space' => 'Kolom Nama hanya boleh berisi huruf dan spasi.'
            ],
            'nama_pengguna' => [
                'required' => 'Kolom Nama Pengguna harus diisi.',
                'is_unique' => 'Kolom Nama Pengguna harus unik.',
                'alpha_numeric' => 'Kolom Nama Pengguna hanya boleh berisi huruf dan angka.',
                'alpha_space' => 'Kolom Nama Pengguna hanya boleh berisi huruf dan spasi.',
                'min_length' => 'Kolom Nama Pengguna minimal terdiri dari 5 karakter.',
                'max_length' => 'Kolom Nama Pengguna maksimal terdiri dari 255 karakter.'
            ],
            'kata_sandi' => [
                'required' => 'Kolom Kata Sandi harus diisi.',
                'min_length' => 'Kolom Kata Sandi minimal terdiri dari 8 karakter.',
                'matches' => 'Kolom Kata Sandi tidak sesuai dengan kolom Konfirmasi Kata Sandi.',
                'max_length' => 'Kolom Kata Sandi maksimal terdiri dari 255 karakter.',
                // 'strong_password' => 'Kolom Kata Sandi harus mengandung huruf besar, huruf kecil, angka, dan simbol.'
            ],
            'no_telp' => [
                'required' => 'Kolom No. Telp harus diisi.',
                'numeric' => 'Kolom No. Telp harus berupa angka.'
            ],
            'level' => [
                'required' => 'Kolom Level harus diisi.',
                'in_list' => 'Kolom Level harus dipilih sebagai Admin atau Pegawai.'
            ]
        ];

        if (!$this->validate($rules, $errors)) {
            // Validation failed, return to the form with errors
            return redirect()->back()->withInput()->with('errors', $this->validator->getErrors());
        }

        $data = [
            'nik' => $this->request->getVar('nik'),
            'nama' => $this->request->getVar('nama'),
            'username' => $this->request->getVar('nama_pengguna'),
            'password' => password_hash($this->request->getVar('kata_sandi'), PASSWORD_DEFAULT),
            'telp' => $this->request->getVar('no_telp'),
            'level' => $this->request->getVar('level')
        ];
        model(UserModel::class)->insert($data);
        return redirect()->to(base_url('admin/manajemenAkun'));
    }

    public function getLihat($id)
    {
        $data = model(UserModel::class)->find($id);
        return view('pages/admin/manajemen_pegawai/lihat', ['data' => $data]);
    }

    public function getUbah($id)
    {
        $data = model(UserModel::class)->find($id);
        return view('pages/admin/manajemen_pegawai/ubah', ['data' => $data]);
    }

    public function postUbah($id)
    {
        // Data validation rules
        $rules = [
            'nik' => "required|is_unique[users.nik,id_users,$id]|numeric|exact_length[16]",
            'nama' => 'required|alpha_space',
            'nama_pengguna' => "required|is_unique[users.username,id_users,$id]|min_length[5]|max_length[255]",
            'no_telp' => 'required|numeric',
            'level' => 'required|in_list[admin,petugas]'
        ];

        // Custom error messages
        $errors = [
            'nik' => [
                'required' => 'Kolom NIK harus diisi.',
                'numeric' => 'Kolom NIK harus berupa angka.',
                'exact_length' => 'Kolom NIK harus berjumlah 16 digit.'
            ],
            'nama' => [
                'required' => 'Kolom Nama harus diisi.',
                'alpha_space' => 'Kolom Nama hanya boleh berisi huruf dan spasi.'
            ],
            'nama_pengguna' => [
                'required' => 'Kolom Nama Pengguna harus diisi.',
                'min_length' => 'Kolom Nama Pengguna minimal terdiri dari 5 karakter.',
                'max_length' => 'Kolom Nama Pengguna maksimal terdiri dari 255 karakter.'
            ],
            'no_telp' => [
                'required' => 'Kolom No. Telp harus diisi.',
                'numeric' => 'Kolom No. Telp harus berupa angka.'
            ],
            'level' => [
                'required' => 'Kolom Level harus diisi.',
                'in_list' => 'Kolom Level harus dipilih sebagai Admin atau Pegawai.'
            ]
        ];

        $data = [
            'nik' => $this->request->getVar('nik'),
            'nama' => $this->request->getVar('nama'),
            'username' => $this->request->getVar('nama_pengguna'),
            // 'password' => password_hash($this->request->getVar('kata_sandi'), PASSWORD_DEFAULT),
            'telp' => $this->request->getVar('no_telp'),
            'level' => $this->request->getVar('level')
        ];

        if ($this->request->getVar('kata_sandi') != '' && $this->request->getVar('konfirmasi_kata_sandi') != '') {
            $rules['kata_sandi'] = 'required|min_length[8]|matches[konfirmasi_kata_sandi]|max_length[255]|strong_password';
            $errors['kata_sandi'] = [
                'required' => 'Kolom Kata Sandi harus diisi.',
                'min_length' => 'Kolom Kata Sandi minimal terdiri dari 8 karakter.',
                'matches' => 'Kolom Kata Sandi tidak sesuai dengan kolom Konfirmasi Kata Sandi.',
                'max_length' => 'Kolom Kata Sandi maksimal terdiri dari 255 karakter.',
                'strong_password' => 'Kolom Kata Sandi harus mengandung huruf besar, huruf kecil, angka, dan simbol.'
            ];
            $data['password'] = password_hash($this->request->getVar('kata_sandi'), PASSWORD_DEFAULT);
        }

        if (!$this->validate($rules, $errors)) {
            // Validation failed, return to the form with errors
            return redirect()->back()->withInput()->with('errors', $this->validator->getErrors());
        }

        model(UserModel::class)->update($id, $data);
        return redirect()->to(base_url('admin/manajemenAkun'));
    }

    public function getHapus($id)
    {
        model(UserModel::class)->delete($id);
        return redirect()->to(base_url('admin/manajemenAkun'));
    }
}
