@extends('backend.index')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Edit Profil</h4>

                        <div class="mb-4">
                            <h5 class="card-title">{{ Auth::user()->name }}</h5>
                            <br/>
                            <h5 class="card-title">{{ Auth::user()->email }}</h5>
                        </div>

                        <form method="POST" action="{{ route('user.update', Auth::user()->id) }}">
                            @csrf
                            @method('PUT')

                            <div class="form-group">
                                <label for="name">Nama</label>
                                <input type="text" class="form-control" id="name" name="name" value="{{ Auth::user()->name }}" required>
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="email" value="{{ Auth::user()->email }}" required>
                            </div>

                            <button type="submit" class="btn btn-primary">Update Profil</button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
