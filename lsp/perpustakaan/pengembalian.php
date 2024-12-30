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
$namapinjam = "";
$tglpinjam = "";
$tglkembali = "";
$sukses = "";
$error = "";


if (isset($_GET['op'])) {
    $op = $_GET['op'];
} else {
    $op = "";
}

if ($op == 'delete') {
    $id   = $_GET['id'];
    $sql1 = "delete from pinjam where id = '$id'";
    $q1         = mysqli_query($koneksi, $sql1);
    if ($q1) {
        $sukses = "Berhasil Kembalikan Buku";
    } else {
        $error = "Gagal melakukan Pengembalian Buku";
    }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pengembalian</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.tailwindcss.com"></script>
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
        </ol>
    </nav>
    <div class="mx-auto">
        <div class="card-body">
            <?php
            if ($error) {
            ?>
                <div class="alert alert-danger" role="alert">
                    <?php echo $error ?>
                </div>
            <?php
                header("refresh:5;url=pengembalian.php"); //5 detk 
            }
            ?>
            <?php
            if ($sukses) {
            ?>
                <div class="alert alert-success" role="alert">
                    <?php echo $sukses ?>
                </div>
            <?php
                header("refresh:5;url=pengembalian.php"); //5 detk 
            }
            ?>
            <!-- untuk mengeluarkan data -->
            <div class="card">
                <div class="card-header text-white bg-secondary">
                    Daftar Buku Yang Dipinjam
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Judul Buku</th>
                                <th scope="col">Penulis</th>
                                <th scope="col">Nama Peminjam</th>
                                <th scope="col">Tanggal Dipinjam</th>
                                <th scope="col">Batas Tanggal Kembali</th>
                                <th scope="col">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql2 = "SELECT katalog.id, katalog.judul, katalog.penulis,  pinjam.namapinjam, pinjam.tglpinjam, pinjam.tglkembali
                            FROM pinjam INNER JOIN katalog ON pinjam.id= katalog.id ";

                            //"select * from katalog order by id desc"; = katalog.id
                            $q2   = mysqli_query($koneksi, $sql2);
                            $urut = 1;
                            while ($r2 = mysqli_fetch_array($q2)) {
                                $id     = $r2['id'];
                                $judul     = $r2['judul'];
                                $penulis     = $r2['penulis'];
                                $namapinjam    = $r2['namapinjam'];
                                $tglpinjam    = $r2['tglpinjam'];
                                $tglkembali    = $r2['tglkembali'];
                            ?>
                                <tr>
                                    <th scope="row"><?php echo $urut++ ?></th>
                                    <td scope="row"><?php echo $judul ?></td>
                                    <td scope="row"><?php echo $penulis ?></td>
                                    <td scope="row"><?php echo $namapinjam ?></td>
                                    <td scope="row"><?php echo $tglpinjam ?></td>
                                    <td scope="row"><?php echo $tglkembali ?></td>
                                    <td scope="row">
                                        <a href="pengembalian.php?op=delete&id=<?php echo $id ?>" onclick="return confirm('Yakin mau kembalikan buku?')"><button type="button" class="btn btn-danger">Kembalikan Buku</button></a>
                                    </td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
</body>

</html>