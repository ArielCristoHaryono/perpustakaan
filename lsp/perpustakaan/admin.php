<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "lsp";

$koneksi = mysqli_connect($host, $user, $pass, $db);
if (!$koneksi) {
    die("Tidak bisa terkoneksi ke database");
}
$judul = "";
$penulis = "";
$penerbit = "";
$isbn = "";
$sukses = "";
$error = "";

if (isset($_GET['op'])) {
    $op = $_GET['op'];
} else {
    $op = "";
}
if ($op == 'delete') {
    $id   = $_GET['id'];
    $sql1 = "delete from katalog where id = '$id'";
    $q1         = mysqli_query($koneksi, $sql1);
    if ($q1) {
        $sukses = "Berhasil hapus data";
    } else {
        $error = "Gagal melakukan delete data";
    }
}

if ($op == 'edit') {
    $id   = $_GET['id'];
    $sql1 = "select * from katalog where id = '$id'";
    $q1 = mysqli_query($koneksi, $sql1);
    $r1 = mysqli_fetch_array($q1);
    $judul = $r1['judul'];
    $penulis = $r1['penulis'];
    $penerbit = $r1['penerbit'];
    $isbn = $r1['isbn'];

    if ($judul == '') {
        $error = "Data tidak ditemukan";
    }
}

if (isset($_POST['simpan'])) { // untuk create
    $judul = $_POST['judul'];
    $penulis = $_POST['penulis'];
    $penerbit = $_POST['penerbit'];
    $isbn = $_POST['isbn'];

    if ($judul && $penulis && $penerbit && $isbn) {
        if ($op == 'edit') { //untuk update
            $sql1 = "update katalog set judul ='$judul', penulis = '$penulis', penerbit = '$penerbit', isbn = '$isbn' where id = '$id'";
            $q1 = mysqli_query($koneksi, $sql1);
            if ($q1) {
                $sukses = "Data berhasil diupdate ";
            } else {
                $error = "Data gagal di update";
            }
        } else { // untuk insert
            $sql1 = "INSERT INTO katalog(judul, penulis, penerbit, isbn) VALUES ('$judul','$penulis','$penerbit', '$isbn')";
            $q1 = mysqli_query($koneksi, $sql1);
            if ($q1) {
                $sukses = "Berhasil memasukkan data baru";
            } else {
                $error = "Gagal memasukkan data";
            }
        }
    } else {
        $error = "Silahkan masukan semua data";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Buku Perpustakaan</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        .mx-auto {
            width: 1200px
        }

        .card {
            margin-top: 45px;
        }
    </style>
</head>

<body>
    <nav aria-label="Breadcrumb">
        <ol class="flex items-center gap-1 text-sm text-gray-600">
            <li>
                <a href="welcome.php" class="block transition hover:text-gray-700">
                    <span class="sr-only"> Home </span>

                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="size-4"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor">
                        <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                    </svg>
                </a>
            </li>

            <li class="rtl:rotate-180">
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="m9 20.247 6-16.5" />
                </svg>
            </li>

            <li>
                <a href="pinjam1.php" class="block transition hover:text-gray-700"> List Buku </a>
            </li>

            <li class="rtl:rotate-180">
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="m9 20.247 6-16.5" />
                </svg>
            </li>

            <li>
                <a href="pengembalian.php" class="block transition hover:text-gray-700"> Lihat Buku Yang Dipinjam </a>
            </li>
    </nav>
    <div class="mx-auto">
        <!-- untuk memasukkan data -->
        <div class="card">
            <div class="card-header text-white bg-secondary">
                Silahkan Input Buku Baru Disini
            </div>
            <div class="card-body">
                <?php
                if ($error) {
                ?>
                    <div class="alert alert-danger" role="alert">
                        <?php echo $error ?>
                    </div>
                <?php
                    header("refresh:5;url=admin.php"); //5 detk 
                }
                ?>
                <?php
                if ($sukses) {
                ?>
                    <div class="alert alert-success" role="alert">
                        <?php echo $sukses ?>
                    </div>
                <?php
                    header("refresh:5;url=admin.php"); //5 detk 
                }
                ?>
                <form action="" method="POST">
                    <div class="mb-3 row">
                        <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="judul" name="judul" value="<?php echo $judul ?>">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="penulis" class="col-sm-2 col-form-label">Penulis</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="judul" name="penulis" value="<?php echo $penulis ?>">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="penerbit" class="col-sm-2 col-form-label">Penerbit</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="judul" name="penerbit" value="<?php echo $penerbit ?>">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="isbn" class="col-sm-2 col-form-label">ISBN</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="judul" name="isbn" value="<?php echo $isbn ?>">
                        </div>
                    </div>
                    <div class="col-12">
                        <input type="submit" name="simpan" value="Simpan Data" class="btn btn-primary" />
                    </div>
                </form>
            </div>
        </div>

        <!-- untuk mengeluarkan data -->
        <div class="card">
            <div class="card-header text-white bg-secondary">
                Katalog Buku
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">Judul Buku</th>
                            <th scope="col">Penulis</th>
                            <th scope="col">Penerbit</th>
                            <th scope="col">ISBN</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sql2 = "select * from katalog order by id desc";
                        $q2   = mysqli_query($koneksi, $sql2);
                        $urut = 1;
                        while ($r2 = mysqli_fetch_array($q2)) {
                            $id     = $r2['id'];
                            $judul     = $r2['judul'];
                            $penulis     = $r2['penulis'];
                            $penerbit    = $r2['penerbit'];
                            $isbn    = $r2['isbn'];

                        ?>
                            <tr>
                                <th scope="row"><?php echo $urut++ ?></th>
                                <td scope="row"><?php echo $judul ?></td>
                                <td scope="row"><?php echo $penulis ?></td>
                                <td scope="row"><?php echo $penerbit ?></td>
                                <td scope="row"><?php echo $isbn ?></td>
                                <td scope="row">
                                    <a href="admin.php?op=edit&id=<?php echo $id ?>"><button type="button" class="btn btn-warning">Ubah</button></a>
                                    <a href="admin.php?op=delete&id=<?php echo $id ?>" onclick="return confirm('Yakin mau delete data?')"><button type="button" class="btn btn-danger">Hapus</button></a>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>