<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\UserModels;
use CodeIgniter\HTTP\ResponseInterface;

class ProfileSettings extends BaseController
{
    public function getIndex()
    {
        $data = ['user' => model(UserModels::class)->ambilDataLogin()];
        return view('pages/profile_settings/index', $data);
    }

    public function postUpdateData()
    {
        $userModels = new UserModels();
        $id_users = session()->get('id_users');
        $username = $this->request->getVar('username');
        $email = $this->request->getVar('email');
        $telp = $this->request->getVar('telp');
        $alamat = $this->request->getVar('alamat');
        $rules = [
            'username' => [
                'label' => 'Nama Pengguna',
                'rules' => 'required|alpha_numeric|min_length[5]|max_length[20]|is_unique[users.username,id_users,' . $id_users . ']',
                'errors' => [
                    'required' => '{field} tidak boleh kosong',
                    'alpha_numeric' => '{field} hanya boleh berisi huruf dan angka',
                    'min_length' => '{field} minimal 5 karakter',
                    'max_length' => '{field} maksimal 20 karakter',
                    'is_unique' => '{field} sudah digunakan',
                ],
            ],
            'email' => [
                'label' => 'E-Mail',
                'rules' => 'required|valid_email|is_unique[users.email,id_users,' . $id_users . ']',
                'errors' => [
                    'required' => '{field} tidak boleh kosong',
                    'valid_email' => '{field} tidak valid',
                    'is_unique' => '{field} sudah digunakan',
                ],
            ],
            'telp' => [
                'label' => 'No. Telepon',
                'rules' => 'required|numeric|min_length[10]|max_length[15]',
                'errors' => [
                    'required' => '{field} tidak boleh kosong',
                    'numeric' => '{field} hanya boleh berisi angka',
                    'min_length' => '{field} minimal 10 karakter',
                    'max_length' => '{field} maksimal 15 karakter',
                ],
            ],
            'alamat' => [
                'label' => 'Alamat',
                'rules' => 'required|min_length[10]|max_length[255]',
                'errors' => [
                    'required' => '{field} tidak boleh kosong',
                    'min_length' => '{field} minimal 10 karakter',
                    'max_length' => '{field} maksimal 255 karakter',
                ],
            ],
        ];
        if (!$this->validate($rules)) {
            return redirect()->back()->withInput()->with('errors', $this->validator->getErrors());
        }
        $userModels->update($id_users, [
            'username' => $username,
            'email' => $email,
            'telp' => $telp,
            'alamat' => $alamat,
        ]);
        return redirect()->back()->with('success', 'Data berhasil diperbarui');
    }

    public function postUpdatePassword()
    {
        $userModels = new UserModels();
        $id_users = session()->get('id_users');
        $old_password = $this->request->getVar('old_password');
        $new_password = $this->request->getVar('new_password');
        $confirm_password = $this->request->getVar('confirm_password');
        $rules = [
            'old_password' => [
                'label' => 'Sandi Lama',
                'rules' => 'required|validatePassword[' . $id_users . ']',
                'errors' => [
                    'required' => '{field} tidak boleh kosong',
                    'validatePassword' => '{field} tidak sesuai',
                ],
            ],
            'new_password' => [
                'label' => 'Sandi Baru',
                'rules' => 'required|min_length[8]|max_length[20]',
                'errors' => [
                    'required' => '{field} tidak boleh kosong',
                    'min_length' => '{field} minimal 8 karakter',
                    'max_length' => '{field} maksimal 20 karakter',
                ],
            ],
            'confirm_password' => [
                'label' => 'Konfirmasi Sandi Baru',
                'rules' => 'required|matches[new_password]',
                'errors' => [
                    'required' => '{field} tidak boleh kosong',
                    'matches' => '{field} tidak sesuai dengan Sandi Baru',
                ],
            ],
        ];
        if (!$this->validate($rules)) {
            return redirect()->back()->withInput()->with('errors', $this->validator->getErrors());
        }
        $userModels->update($id_users, ['password' => password_hash($new_password, PASSWORD_BCRYPT)]);
        return redirect()->back()->with('success', 'Sandi berhasil diperbarui');
    }
}
