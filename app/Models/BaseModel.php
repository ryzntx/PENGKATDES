<?php

namespace App\Models;

use App\Traits\RelationshipsTrait;
use CodeIgniter\Model;

class BaseModel extends Model
{
    use RelationshipsTrait;
}