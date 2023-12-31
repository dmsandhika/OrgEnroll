<?php


use Illuminate\Support\Facades\Route;

use App\Http\Controllers\JurusanController;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\PendaftaranController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\OrganisasiController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\MahasiswaFrontendController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('frontend.home');
});


// ==================Lading Page==================

Route::get('/home', function () {
    return view('frontend.home');
});

Route::get('/about', function () {
    return view('frontend.about');
});



Route::get('/contact', function () {
    return view('frontend.contact');
});

Route::get('/pendaftaran_user', function () {
    return view('frontend.formpendaftaran.pendaftaran');
});

Route::get('/after-register', function () {
    return view('frontend.after_register');
});

Route::get('/blog', [ArtikelController::class, 'index_artikel'])->middleware('auth');


// ==================Admin Dasboard ==================
// Route::get('/admin', function () {
//     return view('backend.dashboard');
// });
// Route::get('/login', [LoginController::class, 'index']);

// ==================Controller resource ==================
Route::middleware(['peran:admin-staff'])->group(function () {

    Route::get('/dashboard', [DashboardController::class, 'index']);

    Route::resource('/jurusan', JurusanController::class);
    Route::resource('/mahasiswa', MahasiswaController::class);
    Route::resource('/pendaftaran', PendaftaranController::class);


    Route::get('/pendaftaran-excel', [PendaftaranController::class, 'pendaftaranExcel'])->name('pendaftaran.excel');
    Route::get('/pendaftaran-pdf', [PendaftaranController::class, 'pendaftaranPDF'])->name('pendaftaran.pdf');

    Route::get('/user/{id}/edit_profile', [UserController::class, 'edit_profile'])->name('user.edit_profile');
    Route::put('/user/{id}/update_profile', [UserController::class, 'update_profile'])->name('user.update_profile');
    // Route::resource('/artikel', ArtikelController::class)->middleware('auth');
    Route::middleware(['auth'])->group(function () {

        Route::get('/artikel', [ArtikelController::class, 'index'])->name('artikel.index');


        Route::get('/artikel/create_data', [ArtikelController::class, 'create'])->name('artikel.create_data');


        Route::post('/artikel', [ArtikelController::class, 'store'])->name('artikel.store');

        Route::get('/artikel/{id}/edit', [ArtikelController::class, 'edit'])->name('artikel.edit');


        Route::put('/artikel/{id}', [ArtikelController::class, 'update'])->name('artikel.update');


        Route::delete('/artikel/{id}', [ArtikelController::class, 'destroy'])->name('artikel.destroy');


        Route::post('/ckeditor/upload', [ArtikelController::class, 'upload'])->name('ckeditor.upload');
    });

    // Route::post('ckeditor/upload', [ArtikelController::class, 'upload'])->name('ckeditor.upload');
});

Route::middleware(['peran:admin-staff-mahasiswa'])->group(function () {
    Route::get('/blog', function () {
        return view('frontend.blog');
    });

    Route::get('/blog_view', function () {
        return view('frontend.view_artikel.index');
    });

    Route::get('/artikel/{id}', [ArtikelController::class, 'show'])->name('artikel.show');
    Route::get('/blog', [ArtikelController::class, 'index_artikel'])->name('blog.index');
})->middleware('auth');



Route::middleware(['peran:admin'])->group(function () {
    Route::resource('/user', UserController::class);
    Route::resource('/kategori', KategoriController::class);
    Route::resource('/organisasi', OrganisasiController::class);
})->middleware('auth');


Route::middleware(['peran:admin-mahasiswa'])->group(function () {
    Route::resource('/form_mahasiswa', MahasiswaFrontendController::class);
})->middleware('auth');

// Route::get('/pendaftaran-pdf', [PendaftaranController::class, 'pendaftaranPDF'])->name('pendaftaran.pdf');
// Route::middleware(['peran:mahasiswa'])->group(function () {
//     Route::get('/after-register', function () {
//         return view('frontend.after_register');
//     });
// });


Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('/access-denied', function () {
    return view('frontend.access_denied');
})->middleware('auth');
