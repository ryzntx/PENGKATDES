<?php

namespace App\Models;

class PengaduanModel extends BaseModel
{
    protected $table = 'pengaduan'; // Nama Tabel
    protected $primaryKey = 'id'; // Primary Key pada Tabel
    protected $useAutoIncrement = true;
    protected $returnType = 'object';
    protected $useSoftDeletes = false;
    protected $protectFields = true;
    protected $allowedFields = ['judul_laporan', 'isi_laporan', 'status', 'user_id']; // Field yang boleh diisi

    protected bool $allowEmptyInserts = false;

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat = 'datetime';
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';
    protected $deletedField = 'deleted_at';

    // Validation
    protected $validationRules = [];
    protected $validationMessages = [];
    protected $skipValidation = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert = [];
    protected $afterInsert = ['doAfterInsert'];
    protected $beforeUpdate = [];
    protected $afterUpdate = ['doAfterUpdate'];
    protected $beforeFind = [];
    protected $afterFind = [];
    protected $beforeDelete = [];
    protected $afterDelete = ['doAfterDelete'];

    public function laporanHariIni()
    {
        return $this->where('created_at', date('Y-m-d'))->where('user_id', session()->get('id_user'))->countAllResults();
    }

    public function laporanProses()
    {
        return $this->where('status', 'proses')->where('user_id', session()->get('id_user'))->countAllResults();
    }

    public function laporanSelesai()
    {
        return $this->where('status', 'selesai')->where('user_id', session()->get('id_user'))->countAllResults();
    }

    public function selectLaporanHariIni()
    {
        return $this->where('created_at', date('Y-m-d'))->where('user_id', session()->get('id_user'))->findAll();
    }

    public function selectLaporanProses()
    {
        return $this->where('status', 'proses')->where('user_id', session()->get('id_user'))->findAll();
    }

    public function selectLaporanSelesai()
    {
        return $this->where('status', 'selesai')->where('user_id', session()->get('id_user'))->findAll();
    }

    public function getPengaduanData(?string $id = null)
    {
        if ($id != null) {
            return $this->select('pengaduan.id, pengaduan.judul_laporan, pengaduan.isi_laporan, pengaduan.status, pengaduan.created_at, user.nama, user.nik')
                ->join('user', 'user.id = pengaduan.user_id')
                ->where('pengaduan.id', $id)
                ->first();
        } else {
            return $this->select('pengaduan.id, pengaduan.judul_laporan, pengaduan.isi_laporan, pengaduan.status, pengaduan.created_at, user.nama, user.nik')
                ->join('user', 'user.id = pengaduan.user_id')
                ->findAll();
        }
    }

    public function getTanggapanPengaduan(?string $user_id = null, ?string $id = null)
    {
        $res = $this->select('pengaduan.id, pengaduan.judul_laporan, pengaduan.isi_laporan, pengaduan.status, pengaduan.created_at, user.nama, user.nik, tanggapan.isi_tanggapan, tanggapan.created_at as tanggal_tanggapan, tanggapan.id as id_tanggapan')
            ->join('user', 'user.id = pengaduan.user_id')
            ->join('tanggapan', 'tanggapan.pengaduan_id = pengaduan.id', 'left')
            ->findAll();
        if ($user_id != null) {
            $res = $this->select('pengaduan.id, pengaduan.judul_laporan, pengaduan.isi_laporan, pengaduan.status, pengaduan.created_at, user.nama, user.nik, tanggapan.isi_tanggapan, tanggapan.created_at as tanggal_tanggapan, tanggapan.id as id_tanggapan')
                ->join('user', 'user.id = pengaduan.user_id')
                ->join('tanggapan', 'tanggapan.pengaduan_id = pengaduan.id', 'left')
                ->where('pengaduan.user_id', $user_id)
                ->findAll();
        }
        if ($id != null) {
            $res = $this->select('pengaduan.id, pengaduan.judul_laporan, pengaduan.isi_laporan, pengaduan.status, pengaduan.created_at, user.nama, user.nik, tanggapan.isi_tanggapan, tanggapan.created_at as tanggal_tanggapan, tanggapan.id as id_tanggapan')
                ->join('user', 'user.id = pengaduan.user_id')
                ->join('tanggapan', 'tanggapan.pengaduan_id = pengaduan.id', 'left')
                ->where('pengaduan.id', $id)
                ->first();
        }
        return $res;
    }

}
