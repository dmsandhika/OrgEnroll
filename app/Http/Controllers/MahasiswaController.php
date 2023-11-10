<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mahasiswa;
use App\Models\Jurusan;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class MahasiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $ar_mahasiswa = Mahasiswa::all();
        return view('backend.mahasiswa.index', compact('ar_mahasiswa'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //ambil master data kategori u/ dilooping di select option form
        $ar_mahasiswa = Mahasiswa::all();
        $ar_gender = ['L', 'P'];
        return view('backend.mahasiswa.form', compact('ar_mahasiswa','ar_gender'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $rs = Mahasiswa::find($id);
        return view('backend.mahasiswa.detail', compact('rs'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $post = Mahasiswa::find($id);
        Mahasiswa::where('id',$id)->delete();
        return redirect()->route('mahasiswa.index')
      ->with('success', 'Data Mahasiswa Berhasil Dihapus');
    }
}