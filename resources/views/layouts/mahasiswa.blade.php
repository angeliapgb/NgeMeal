@extends('layouts.master')

@section('title', 'List Mahasiswa')


@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
            <h1>Data Mahasiswa</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>NIM</th>
                        <th>Nama</th>
                        <th>Jurusan</th>
                        <th>Kampus</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($mhs as $dtmhs)   
                    <tr>
                        <td>{{ $dtmhs->nim }}</td>
                        <td>{{ $dtmhs->nama }}</td>
                        <td>{{ $dtmhs->jurusan->nama_jurusan }}</td>
                        <td>{{ $dtmhs->kampusBinus->nama_kampus }}</td>
                    </tr>
                    @empty
                        <td>data kosong</td>
                    @endforelse
                </tbody>
            </table>
        </div>
        <div class="col-md-4">
            <h1>Data Jurusan</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>Nama Jurusan</th>
                        <th>Deskripsi</th>
                        <th>List Mahasiswa</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($jur as $jr)
                    <tr>
                        <td>{{ $jr->nama_jurusan }}</td>
                        <td>{{ $jr->deskripsi }}</td>
                        <td>
                        @foreach($jr->mahasiswa as $jurmhs )
                            {{ $jurmhs->nama }}
                        @endforeach
                        </td>
                        
                    </tr>
                    @empty
                        <td>data kosong</td>
                    @endforelse
                </tbody>
                
            </table>
        </div>
    </div>
</div>
@endsection