<?php

namespace App\Models;

class PengaduanModel extends BaseModel
{
    protected $table            = 'pengaduans'; // Nama Tabel
    protected $primaryKey       = 'id_pengaduans'; // Primary Key pada Tabel
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = []; // Field yang boleh diisi

    protected bool $allowEmptyInserts = false;
}
