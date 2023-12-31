@extends('backend.index')
@section('content')
    @php
        $ar_judul = ['No', 'Mahasiswa', 'Organisasi Pendaftaran', 'Status Pendaftaran', 'Action'];
        $no = $ar_pendaftaran->firstItem();
    @endphp
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-light p-3 rounded">
            <li class="breadcrumb-item"><a href="{{ url('/dashboard') }}" class="text-primary">Dashboard</a></li>
            <li class="breadcrumb-item active">Daftar Pendaftaran</li>
        </ol>
    </nav>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Tabel Pendaftaran</h4>

                <div class="d-flex flex-column flex-md-row justify-content-between align-items-center mb-2">
                    <div>
                        <a href="{{ route('pendaftaran.create') }}" class="btn btn-primary btn-xs"
                            title="Tambah Data Pendaftaran">
                            <i class="bi bi-clipboard-plus"></i>
                            Tambah
                        </a>

                        <a href="{{ route('pendaftaran.pdf', ['search' => request('search')]) }}"
                            class="btn btn-danger btn-xs" title="Eksport PDF Data Pendaftaran">
                            <i class="bi bi-file-earmark-pdf"></i>
                            PDF
                        </a>


                        <a href="{{ route('pendaftaran.excel') }}" class="btn btn-success btn-xs" title="Export To Excel">
                            <i class="bi bi-file-excel"></i>
                            EXCEL
                        </a>
                    </div>

                    <form action="{{ route('pendaftaran.index') }}" method="get" class="d-flex">
                        <input type="text" name="search" class="form-control form-control-sm"
                            value="{{ request('search') }}" />
                        <button type="submit" class="btn btn-primary btn-xs">
                            <div class="d-flex align-items-center">
                                <i class="bi bi-search"></i>
                                <span class="ms-1">Cari</span>
                            </div>
                        </button>
                    </form>

                </div>

                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                @foreach ($ar_judul as $jdl)
                                    <th>{{ $jdl }}</th>
                                @endforeach
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($ar_pendaftaran as $p)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $p->mahasiswa->nama }}</td>
                                    <td>{{ $p->mahasiswa->organisasi->nama }}</td>
                                    <td>{{ $p->status_pendaftaran }}</td>

                                    <td>
                                        <form method="POST" action="{{ route('pendaftaran.destroy', $p->id) }}">
                                            @csrf
                                            @method('DELETE')
                                            <a class="btn btn-info btn-xs" href="{{ route('pendaftaran.show', $p->id) }}"
                                                title="Detail Pendaftaran">
                                                <i class="bi bi-eye"></i>
                                            </a>
                                            <a class="btn btn-warning btn-xs"
                                                href="{{ route('pendaftaran.edit', $p->id) }}" title="Ubah Pendaftaran">
                                                <i class="bi bi-pencil-fill"></i>
                                            </a>
                                            <button type="submit" title="Hapus Mahasiswa" class="btn btn-danger btn-xs"
                                                name="proses" value="hapus"
                                                onclick="return confirm('Anda Yakin diHapus?')">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-end mt-5">
                        {{ $ar_pendaftaran->links('pagination::bootstrap-5') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
