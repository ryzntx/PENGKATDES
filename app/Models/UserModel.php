<?php

namespace App\Models;

class UserModel extends BaseModel
{
    protected $table            = 'users'; // Nama Tabel
    protected $primaryKey       = 'id_users'; // Primary Key pada Tabel
    protected $useAutoIncrement = true;
    protected $returnType       = 'object';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = ['nik', 'nama', 'username', 'password', 'telp', 'level',]; // Field yang boleh diisi

    protected bool $allowEmptyInserts = false;

    public function ambilDataLogin()
    {
        return $this->where('id_users', session()->get('id_users'))->first();
    }
}