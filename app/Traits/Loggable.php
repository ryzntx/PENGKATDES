<?php

namespace App\Traits;

use CodeIgniter\Model;

trait Loggable
{

    public static function logToDb(?object $model, ?array $data, ?string $eventType)
    {
        $tableName = '';
        if ($model != null) {
            $tableName = $model->table;
        }
        $logModel = new \App\Models\LogModel();
        $dateTime = date('Y-m-d H:i:s');
        $userId = session()->get('id_user');

        //

        if ($eventType == 'insert') {
            $data = [
                'tables_name' => $tableName,
                'event' => 'insert',
                'description' => "insert into $tableName",
                'subject_id' => $data['id'] ?? '',
                'data' => json_encode($data['data']),
                'user_id' => $userId,
                'created_at' => $dateTime,
                'updated_at' => $dateTime,
            ];
            $logModel->insert($data);
        } elseif ($eventType == 'update') {
            $data = [
                'tables_name' => $tableName,
                'event' => 'update',
                'description' => "update into $tableName",
                'subject_id' => $data['id'],
                'data' => json_encode($data['data']),
                'user_id' => $userId,
                'created_at' => $dateTime,
                'updated_at' => $dateTime,
            ];
            $logModel->insert($data);
        } elseif ($eventType == 'delete') {
            $data = [
                'tables_name' => $tableName,
                'event' => 'delete',
                'description' => "delete from $tableName",
                'subject_id' => $data['id'],
                'data' => json_encode($data['data']),
                'user_id' => $userId,
                'created_at' => $dateTime,
                'updated_at' => $dateTime,
            ];
            $logModel->insert($data);
        } elseif ($eventType == 'login') {
            $data = [
                'tables_name' => '',
                'event' => 'login',
                'description' => "login into system as " . session()->get('level'),
                'subject_id' => '',
                'data' => json_encode([request()->getIPAddress(), request()->getUserAgent()->getAgentString()]),
                'user_id' => $userId,
                'created_at' => $dateTime,
                'updated_at' => $dateTime,
            ];
            $logModel->insert($data);
        } elseif ($eventType == 'logout') {
            $data = [
                'tables_name' => '',
                'event' => 'logout',
                'description' => "logout from system",
                'subject_id' => '',
                'data' => json_encode([request()->getIPAddress(), request()->getUserAgent()->getAgentString()]),
                'user_id' => $userId,
                'created_at' => $dateTime,
                'updated_at' => $dateTime,
            ];
            $logModel->insert($data);
        }
    }
}
