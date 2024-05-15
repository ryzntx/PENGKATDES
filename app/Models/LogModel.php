<?php

namespace App\Models;

use Carbon\Carbon;

class LogModel extends BaseModel
{
    protected $table            = 'log';
    protected $useAutoIncrement = true;
    protected $returnType       = 'object';
    protected $protectFields    = true;
    protected $allowedFields    = [
        'tables_name', 'event', 'description', 'subject_id', 'data', 'user_id'
    ];

    public function initialize()
    {
        // $this->hasOne('users', UserModel::class, 'user_id', 'id');
    }

    public function getLogActivities($id = '')
    {
        if ($id === '') {
            return $this->asObject()
                ->findAll();
        }

        return $this->asObject()
            ->where(['id' => $id])
            ->first();
    }

    public function getLatestLogActivities()
    {
        return $this->asObject()
            ->orderBy('created_at', 'desc')
            ->findAll(10);
    }

    public function make_query($created_at, $create_by)
    {
        $query = "
        SELECT * from logs
        ";

        if (isset($created_at) && $created_at !== '') {
            $query .= "
                AND created_at='" . $created_at . "'
            ";
        }

        if (isset($create_by)) {
            $create_by = substr($this->db->escape($create_by), 1, -1);
            $query .= "
                AND user_id like '%" . $create_by . "%'
            ";
        }

        return $query;
    }

    public function fetch_data($limit, $start, $create_date, $create_by)
    {
        $query = $this->make_query($create_date, $create_by);
        $query .= ' LIMIT ' . $start . ', ' . $limit;
        $data = $this->db->query($query);
        return $data->getResult();
    }

    public function count_all($create_date, $create_by)
    {
        $query = $this->make_query($create_date, $create_by);
        $data = $this->db->query($query);

        return count($data->getResultArray());
    }


    public function getDateHumanize($date)
    {
        // $date = date_create($date);
        // return date_format($date, 'd F Y H:i:s');
        return Carbon::parse($date)->locale('id')->diffForHumans();
    }

    public function getJsonDataAttribute($value)
    {
        return json_decode($value, true);
    }
}
