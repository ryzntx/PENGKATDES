<?php

namespace App\Controllers\Pegawai;

use App\Controllers\BaseController;
use App\Models\PengaduanFotoModel;
use App\Models\PengaduanModel;
use App\Models\TanggapanModel;

class DataPengaduan extends BaseController
{
    public function getIndex()
    {
        $data = [
            'no' => 1,
            'pengaduan' => model(PengaduanModel::class)->getPengaduanData(),
        ];
        return view('pages/pegawai/daftar_pengaduan/index', $data);
    }

    public function getLihat($id)
    {
        $data = [
            'pengaduan' => model(PengaduanModel::class)->getPengaduanData($id),
            'foto' => model(PengaduanFotoModel::class)->where('pengaduan_id', $id)->findAll(),
        ];
        return view('pages/pegawai/daftar_pengaduan/lihat', $data);
    }

    public function getTanggap($id)
    {
        $data = [
            'pengaduan' => model(PengaduanModel::class)->getPengaduanData($id),
            'foto' => model(PengaduanFotoModel::class)->where('pengaduan_id', $id)->findAll(),
        ];
        $tanggapi = model(TanggapanModel::class)->where('pengaduan_id', $id)->first();
        if ($tanggapi != null) {
            $data['tanggapi'] = $tanggapi;

        }
        // dd($data);
        return view('pages/pegawai/daftar_pengaduan/tanggapi', $data);
    }

    public function postTanggap($id)
    {
        $data = [
            // 'isi_tanggapan' => $this->request->getPost('isi_tanggapan'),
            'status' => $this->request->getPost('status'),
        ];
        model(PengaduanModel::class)->update($id, $data);
        if ($this->request->getVar('isi_tanggapan') != null) {
            $data = [
                'pengaduan_id' => $id,
                'isi_tanggapan' => $this->request->getPost('isi_tanggapan'),
                'user_id' => session()->get('id_user'),
            ];
            if ($this->request->getPost('id_tanggapan') != null) {
                model(TanggapanModel::class)->update($this->request->getPost('id_tanggapan'), $data);
                // return redirect()->to(base_url('pegawai/dataPengaduan'))->with('success', 'Data berhasil diubah');
            } else {
                model(TanggapanModel::class)->insert($data);
            }
        }
        return redirect()->to(base_url('pegawai/dataPengaduan'))->with('success', 'Data berhasil di tanggapi');
    }

    public function getHapusPengaduan($id)
    {
        $pengaduan = model(PengaduanModel::class)->find($id);
        if ($pengaduan) {
            // Delete associated photos from the folder
            $foto = model(PengaduanFotoModel::class)->where('pengaduan_id', $id)->findAll();
            foreach ($foto as $f) {
                $path = 'uploads/pengaduan/id_' . $id . '/' . $f->foto;
                $parentPath = 'uploads/pengaduan/id_' . $id;
                if (file_exists($path)) {
                    deleteDirectory($path);
                    deleteDirectory($parentPath);
                }
            }
            // Delete the record from the database
            model(TanggapanModel::class)->where('pengaduan_id', $id)->delete();
            model(PengaduanModel::class)->delete($id);
            model(PengaduanFotoModel::class)->where('pengaduan_id', $id)->delete();
            return redirect()->to(base_url('pegawai/datapengaduan'))->with('success', 'Laporan Berhasil Dihapus!');
        } else {
            return redirect()->back()->with('toast_error', 'Laporan tidak ditemukan!');
        }

    }
}
