<?php

namespace App\Controllers\User;

use App\Controllers\BaseController;
use App\Models\PengaduanFotoModel;
use App\Models\PengaduanModel;
use App\Models\TanggapanModel;

class DataLaporan extends BaseController
{
    public function getIndex()
    {
        $data = [
            'pengaduan' => model(PengaduanModel::class)->getTanggapanPengaduan(session()->get('id_user')),
        ];
        // dd($data);
        return view('pages/user/laporan/list', $data);
    }

    public function getBuat()
    {
        return view('pages/user/laporan/buat');
    }

    public function postBuat()
    {
        // Todo: "Insert photo to database and save it to folder";
        $data = [
            'judul_laporan' => $this->request->getPost('judul_laporan'),
            'isi_laporan' => $this->request->getPost('isi_laporan'),
            'status' => 'baru',
            'user_id' => session()->get('id_user'),
        ];
        model(PengaduanModel::class)->insert($data);
        $id_pengaduan = model(PengaduanModel::class)->getInsertID();
        return response()->setJSON(['status' => 'success', 'message' => 'Laporan Berhasil Dibuat!', 'id' => $id_pengaduan]);
        // return redirect()->to(base_url('user/datalaporan'))->with('success', 'Laporan Berhasil Dibuat!');
    }

    public function getLihat($id)
    {
        $data = [
            'pengaduan' => model(PengaduanModel::class)->getTanggapanPengaduan(id: $id),
            'foto' => model(PengaduanFotoModel::class)->where('pengaduan_id', $id)->findAll(),
        ];
        return view('pages/user/laporan/lihat', $data);
    }

    public function getUbah($id)
    {
        $data = [
            'pengaduan' => model(PengaduanModel::class)->find($id),
            'foto' => model(PengaduanFotoModel::class)->where('pengaduan_id', $id)->findAll(),
        ];
        return view('pages/user/laporan/ubah', $data);
    }

    public function postUbah($id)
    {
        $data = [
            'judul_laporan' => $this->request->getPost('judul_laporan'),
            'isi_laporan' => $this->request->getPost('isi_laporan'),
            // 'status' => $this->request->getPost('status'),
        ];
        model(PengaduanModel::class)->update($id, $data);
        return redirect()->to(base_url('user/datalaporan'))->with('success', 'Laporan Berhasil Diubah!');
    }

    public function getHapus($id)
    {
        // Todo: "Delete the specified record from the database and remove associated photos from the folder";
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
            return redirect()->to(base_url('user/datalaporan'))->with('success', 'Laporan Berhasil Dihapus!');
        } else {
            return redirect()->to(base_url('user/datalaporan'))->with('error', 'Laporan tidak ditemukan!');
        }
    }

    public function postUploadFotoN()
    {
        $id_pengaduan = $this->request->getVar('id');
        // dd($id_pengaduan);
        $foto = $this->request->getFileMultiple('foto');
        if (isset($foto[0])) {
            if ($foto[0]->isValid() && !$foto[0]->hasMoved()) {
                $foto[0]->move('uploads/pengaduan/id_' . $id_pengaduan . '/');
                $nama_foto = $foto[0]->getName();
            }
            model(PengaduanFotoModel::class)->insert(['foto' => $nama_foto, 'pengaduan_id' => $id_pengaduan]);
            return json_encode(['status' => 'success', 'message' => 'Foto berhasil diupload!']);
        }
        // return response()->setStatusCode(403, 'No File Retrived')->setJSON(['status' => 'error', 'message' => 'Foto gagal diupload!']);
        return json_encode(['status' => 'error', 'message' => 'Foto gagal diupload!']);
    }

    public function postUploadFoto($id)
    {
        $foto = $this->request->getFileMultiple('foto');
        if ($foto[0]->isValid() && !$foto[0]->hasMoved()) {
            $foto[0]->move('uploads/pengaduan/id_' . $id . '/');
            $nama_foto = $foto[0]->getName();
        }
        model(PengaduanFotoModel::class)->insert(['foto' => $nama_foto, 'pengaduan_id' => $id]);
        return json_encode(['status' => 'success', 'message' => 'Foto berhasil diupload!']);
    }

    public function postHapusFoto($id)
    {
        $foto = model(PengaduanFotoModel::class)->find($id);
        if ($foto) {
            $path = 'uploads/pengaduan/id_' . $foto->pengaduan_id . '/' . $foto->foto;
            if (file_exists($path)) {
                deleteDirectory($path);
            }
            model(PengaduanFotoModel::class)->delete($id);
            return json_encode(['status' => 'success', 'message' => 'Foto berhasil dihapus!']);
        } else {
            return json_encode(['status' => 'error', 'message' => 'Foto tidak ditemukan!']);
        }
    }

    public function getDownloadFoto($id)
    {
        $foto = model(PengaduanFotoModel::class)->find($id);
        $path = 'uploads/pengaduan/id_' . $foto->pengaduan_id . '/' . $foto->foto;
        return $this->response->download($path, null);
    }

    public function getTanggapan($id)
    {
        $data = [
            'pengaduan' => model(PengaduanModel::class)->getTanggapanPengaduan(id: $id),
            'foto' => model(PengaduanFotoModel::class)->where('pengaduan_id', $id)->findAll(),
        ];
        return view('pages/user/laporan/tanggapan', $data);
    }

    public function getRedirect()
    {
        return redirect()->to(base_url('user/datalaporan'))->with('toast_success', 'Laporan / Pengaduan Berhasil Dibuat!');
    }
}
