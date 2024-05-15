<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\OrganisasiModel;
use CodeIgniter\HTTP\ResponseInterface;

class OrganisasiDesa extends BaseController
{
    public function getIndex()
    {
        $data = [

            'no' => 0,
            'data' => model(OrganisasiModel::class)->findAll()
        ];
        return view('pages/admin/organisasi_desa/index', $data);
    }

    public function getTambah()
    {
        return view('pages/admin/organisasi_desa/tambah');
    }

    public function postTambah()
    {
        $foto = $this->request->getFile('foto');

        $data = [
            'nip' => $this->request->getVar('nip'),
            'nama' => $this->request->getVar('nama'),
            'jabatan' => $this->request->getVar('jabatan'),
            'deskripsi' => $this->request->getVar('deskripsi'),
            'foto' => 'default.png'
        ];

        if ($foto->isValid() && !$foto->hasMoved()) {
            $res = $foto->move('/uploads/organisasi/foto');
            $nama_foto = $foto->getName();
            $data['foto'] = $nama_foto;
        }


        model(OrganisasiModel::class)->insert($data);
        return redirect()->to('admin/organisasiDesa')->with('success', 'Data berhasil ditambahkan');
    }

    public function getLihat($id)
    {
        $data = ['data' => model(OrganisasiModel::class)->find($id)];
        return view('pages/admin/organisasi_desa/lihat', $data);
    }

    public function getUbah($id)
    {
        $data = ['data' => model(OrganisasiModel::class)->find($id)];
        return view('pages/admin/organisasi_desa/ubah', $data);
    }

    public function postUbah($id)
    {
        $foto = $this->request->getFile('foto');
        $fotoLama = model(OrganisasiModel::class)->find($id)->foto;

        $data = [
            'nip' => $this->request->getVar('nip'),
            'nama' => $this->request->getVar('nama'),
            'jabatan' => $this->request->getVar('jabatan'),
            'deskripsi' => $this->request->getVar('deskripsi'),
        ];

        if ($foto->isValid() && !$foto->hasMoved()) {
            if (file_exists('/uploads/organisasi/foto/' . $fotoLama)) {
                unlink('/uploads/organisasi/foto/' . $fotoLama);
            }
            $res = $foto->move('/uploads/organisasi/foto');
            $nama_foto = $foto->getName();
            $data['foto'] = $nama_foto;
        } else {
            $data['foto'] = $fotoLama;
        }

        model(OrganisasiModel::class)->update($id, $data);
        return redirect()->to('admin/organisasiDesa')->with('success', 'Data berhasil diubah');
    }
}