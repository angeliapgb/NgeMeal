<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMahasiswaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mahasiswa', function (Blueprint $table) {
            $table->id();
            $table->foreignId('jurusan_id');
            $table->foreignId('kampus_binus_id');
            $table->bigInteger('nim');
            $table->string('nama', 120);
            $table->text('alamat');
            $table->timestamps();

            $table->foreign('jurusan_id')->references('id')->on('jurusan');
            $table->foreign('kampus_binus_id')->references('id')->on('kampus_binus');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mahasiswa');
    }
}
