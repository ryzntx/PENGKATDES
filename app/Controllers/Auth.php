<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\UserModels;

class Auth extends BaseController
{
    // Show the login page
    public function getLogin()
    {
        // Check if the user is already logged in
        if (session()->get("logged_in")) {
            return redirect()->to("beranda");
        }
        // If not, show the login page
        return view("pages/auth/login");
    }

    // Process the login form
    public function postLoginAction()
    {
        $userModels = new UserModels();
        // Get the username and password from the form
        $username = $this->request->getVar("username");
        $password = $this->request->getVar("password");

        // Check if the username and password are correct
        $rules = [
            "username" => "required",
            "password" => "required",
        ];
        if (!$this->validate($rules)) {
            session()->setFlashdata('errors', $this->validator->getErrors());
            return redirect()->back()->withInput()->with("errors", $this->validator->getErrors());
        }

        // Check if the username exists in the database
        $checkUser = $userModels->where("username", $username)->first();
        if (!$checkUser) {
            return redirect()->back()->withInput()->with("errors", "Username tidak ditemukan!");
        } else {
            // Check if the password is correct
            if (!password_verify($password, $checkUser->password)) {
                return redirect()->back()->withInput()->with("errors", "Password salah!");
            } else {
                // Set the session data for the user
                $this->session->set([
                    "id_users" => $checkUser->id_users,
                    "level" => $checkUser->level,
                    'logged_in' => TRUE,
                ]);
                // Redirect to the dashboard
                return redirect()->to("beranda");
            }
        }
    }

    // Show the register page
    public function getRegister()
    {
        // Check if the user is already logged in
        if (session()->get("logged_in")) {
            return redirect()->to("beranda");
        }
        // If not, show the register page
        return view("pages/auth/register");
    }

    // Process the register form
    public function postRegisterAction()
    {
        $userModels = new UserModels();
        // Get the data from the form
        $nik = $this->request->getVar("nik");
        $nama = $this->request->getVar("nama");
        $telp = $this->request->getVar("telp");
        $username = $this->request->getVar("username");
        $password = $this->request->getVar("password");

        // Check form validation
        $rules = [
            "nik" => "required",
            "nama" => "required",
            "telp" => "required",
            "username" => "required",
            "password" => "required",
        ];
        if (!$this->validate($rules)) {
            session()->setFlashdata('errors', $this->validator->getErrors());
            return redirect()->back()->withInput()->with("errors", $this->validator->getErrors());
        }
        // Insert the data to the database
        $user = $userModels->insert([
            "nik" => $nik,
            "nama" => $nama,
            "telp" => $telp,
            "username" => $username,
            "password" => password_hash($password, PASSWORD_BCRYPT),
            "level" => "user",
        ]);
        // Check if the data is inserted
        if ($user) {
            // Redirect to the login page
            session()->setFlashdata('message', 'Pendaftaran berhasil! Silahkan login.');
            return redirect()->to("auth/login");
        } else {
            // If not, show an error message
            session()->setFlashdata('errors', 'Pendaftaran gagal! Silahkan coba lagi.');
            return redirect()->back()->withInput()->with("errors", "Pendaftaran gagal! Silahkan coba lagi.");
        }
    }

    // Process the logout
    public function getLogout()
    {
        // Destroy the session
        $this->session->destroy();
        // Redirect to the login page
        session()->setFlashdata('message', 'Anda telah keluar dari aplikasi.');
        return redirect()->to("auth/login")->with('message', 'Anda telah keluar dari aplikasi.');
    }
}
