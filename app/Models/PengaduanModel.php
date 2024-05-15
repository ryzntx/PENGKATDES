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

}
