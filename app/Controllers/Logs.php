<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\LogModel;
use App\Models\UserModel;
use CodeIgniter\HTTP\ResponseInterface;
use Hermawan\DataTables\DataTable;

class Logs extends BaseController
{
    public function getIndex()
    {
        $data = [
            'no' => 0,
            'users' => model(UserModel::class)->findAll(),
            // 'logs' => model(LogModel::class)->with('users')->orderBy('created_at', 'DESC')->find()
        ];
        return view('pages/admin/logs_activity/index', $data);
    }

    public function getJsonDataTable()
    {
        $logs = model(LogModel::class)->select('log.id, log.created_at as tanggal, log.created_at as waktu, user.username, log.description')->join('user', 'user.id = log.user_id');
        return DataTable::of($logs)->addNumbering()->hide('id')
            ->edit('tanggal', function ($row) {
                return date('d-m-Y', strtotime($row->tanggal));
            })->edit('waktu', function ($row) {
                return date('H:i:s', strtotime($row->waktu));
            })
            ->add('action', function ($row) {
                return '<button class="btn btn-secondary btn-sm">...</button>';
            })->toJson();
    }
}
