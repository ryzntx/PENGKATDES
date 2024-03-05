<?php

namespace App\Models;

class UserModels extends BaseModel
{
    protected $table            = 'users'; // Nama Tabel
    protected $primaryKey       = 'id_users'; // Primary Key pada Tabel
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = ['nik', 'nama', 'username', 'password', 'telp', 'level',]; // Field yang boleh diisi

    protected bool $allowEmptyInserts = false;
}