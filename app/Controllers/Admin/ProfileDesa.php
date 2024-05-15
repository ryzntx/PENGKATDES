<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\ProfileModel;
use CodeIgniter\HTTP\ResponseInterface;

class ProfileDesa extends BaseController
{
    public function getIndex(): string
    {
        $data = ['data' => model(ProfileModel::class)->first()];
        return view('pages/admin/profile_desa/index', $data);
    }

    public function postUpdate()
    {
        $data = [
            'tentang' => $this->request->getVar('tentang'),
            'visi' => $this->request->getVar('visi'),
            'misi' => $this->request->getVar('misi'),
            'sejarah' => $this->request->getVar('sejarah'),
            'geografis' => $this->request->getVar('geografis'),
            'demografis' => $this->request->getVar('demografis')
        ];

        model(ProfileModel::class)->update('1', $data);
        return redirect()->back()->with('success', 'Data Berhasil di Simpan!');
    }
}
