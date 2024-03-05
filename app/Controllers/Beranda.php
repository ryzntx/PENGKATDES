<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class Beranda extends BaseController
{
    public function getIndex()
    {
        return view("pages/dashboard");
    }
}