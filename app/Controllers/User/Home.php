<?php

namespace App\Controllers\User;

use App\Controllers\BaseController;
use App\Models\PengaduanModel;

class Home extends BaseController
{
    public function getIndex()
    {
        //Todo: "Hitung jumlah laporan pada hari ini"
        //Todo: "Hitung jumlah laporan yang di proses"
        //Todo: "Hitung jumlah laporan yang di selesai"
        $data = [
            'laporan_hari_ini' => model(PengaduanModel::class)->laporanHariIni(),
            'laporan_proses' => model(PengaduanModel::class)->laporanProses(),
            'laporan_selesai' => model(PengaduanModel::class)->laporanSelesai(),
            'data_laporan_hari_ini' => model(PengaduanModel::class)->selectLaporanHariIni(),
            'data_laporan_proses' => model(PengaduanModel::class)->selectLaporanProses(),
            'data_laporan_selesai' => model(PengaduanModel::class)->selectLaporanSelesai(),
        ];
        // dd($data);
        return view('pages/user/beranda', $data);
    }
}
