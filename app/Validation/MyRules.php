<?php

namespace App\Validation;

class MyRules
{
    // public function custom_rule(): bool
    // {
    //     return true;
    // }

    // create a function named validatePassword to validate old password from database where id user is params

    public function validatePassword(string $str, string $fields, array $data): bool
    {
        $model = new \App\Models\UserModel();
        $user = $model->find($fields);
        if (!password_verify($str, $user->password)) {
            return false;
        }
        return true;
    }

}
