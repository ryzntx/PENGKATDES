<?php

namespace App\Models;

use App\Traits\Loggable;
use App\Traits\RelationshipsTrait;
use CodeIgniter\Model;

class BaseModel extends Model
{
    use RelationshipsTrait, Loggable;

    public function doAfterInsert(array $row)
    {
        $this->logToDb($this, $row, 'insert');
    }

    public function doAfterUpdate(array $row)
    {
        $this->logToDb($this, $row, 'update');
    }

    public function doAfterDelete(array $row)
    {
        $this->logToDb($this, $row, 'delete');
    }
}
