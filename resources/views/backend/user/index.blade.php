
@extends('backend.index')
@section('content')
@php
$ar_judul = ['No','Nama','Email','Role','IsActive','Terakhir Diubah','Action'];
$no = 1;
@endphp
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-light p-3 rounded">
            <li class="breadcrumb-item"><a href="{{ url('/dashboard') }}"
                class="text-primary">Dashboard</a></li>
            <li class="breadcrumb-item active">Kelola User</li>
        </ol>
    </nav>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Kelola User</h4>
                <div class="d-flex justify-content-between mb-2">
                    
                    
                </div>
                <div class="table-responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          @foreach($ar_judul as $jdl)
                            <th>{{ $jdl }}</th>
                          @endforeach
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($ar_user as $u)
                          <tr>
                            <td>{{ $no++ }}</td>
                            <td>{{ $u->name }}</td>
                            <td>{{ $u->email }}</td>
                            <td>{{ $u->role }}</td>
                            <td>{{ $u->isactive }}</td>
                            <td>{{ $u->updated_at }}</td>
                                    <td>
                              <form method="POST" action="{{ route('user.destroy', $u->id) }}">
                              @csrf
                                        @method('DELETE')		
                              
                                        <a class="btn btn-warning btn-sm" href="{{ route('user.edit', $u->id) }}" title="Ubah User">
                                            <i class="bi bi-pencil-fill"></i>
                                        </a>
                                        <button type="submit" title="Hapus User" class="btn btn-danger btn-sm"
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
                    
                </div>
            </div>
        </div>
    </div>
@endsection
