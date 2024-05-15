<?php

namespace App\Models;

class UserModel extends BaseModel
{

    protected $table            = 'user'; // Nama Tabel
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'object';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = ['nik', 'nama', 'username', 'email', 'password', 'telp', 'alamat', 'level']; // Field yang boleh diisi

    protected bool $allowEmptyInserts = false;

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = ['doAfterInsert'];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = ['doAfterUpdate'];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = ['doAfterDelete'];

    public function ambilDataLogin()
    {
        return $this->where('id', session()->get('id_user'))->first();
    }
}
