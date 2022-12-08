<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Mahasiswa as MahasiswaModel;
use App\Models\Jurusan as JurusanModel;
use App\Models\KampusBinus as KampusBinusModel;

class PageController extends Controller
{
    public function login(){
        return view('login');
    }

    public function mahasiswa(){
        $jurusan = JurusanModel::all();
        $dtmahasiswa = MahasiswaModel::all();

        return view('layouts.mahasiswa', ['jur'=>$jurusan, 'mhs'=>$dtmahasiswa]);
    }
}
