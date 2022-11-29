<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Mahasiswa as MahasiswaModel;
use App\Models\Jurusan as JurusanModel;
use App\Models\KampusBinus as KampusBinusModel;

class PageController extends Controller
{
    public function tampil(){
        return view('layouts.master');
    }

    public function mahasiswa(){
        $jurusan = JurusanModel::all();
        $dtmahasiswa = MahasiswaModel::all();

        return view('layouts.mahasiswa', ['jur'=>$jurusan, 'mhs'=>$dtmahasiswa]);
    }
}
