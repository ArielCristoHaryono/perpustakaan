<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Welcome</title>
</head>

<body>
    <section class="bg-gray-50">
        <div class="mx-auto max-w-screen-xl px-4 py-32 lg:flex lg:h-screen lg:items-center">
            <div class="mx-auto max-w-xl text-center">
                <h1 class="text-3xl font-extrabold sm:text-5xl">
                    Selamat Datang
                    <strong class="font-extrabold text-blue-700 sm:block"> Silahkan Pilih Peran </strong>
                </h1>

                <p class="mt-4 sm:text-xl/relaxed">
                    Admin bisa melakukan uptade dan delete buku,
                    member hanya bisa meminjam dan mengembalikan buku
                </p>

                <div class="mt-8 flex flex-wrap justify-center gap-4">
                    <a
                        class="block w-full rounded bg-red-600 px-12 py-3 text-sm font-medium text-white shadow hover:bg-red-700 focus:outline-none focus:ring active:bg-red-500 sm:w-auto"
                        href="admin.php">
                        Admin
                    </a>

                    <a
                        class="block w-full rounded bg-blue-600 px-12 py-3 text-sm font-medium text-white shadow hover:bg-blue-700 focus:outline-none focus:ring active:bg-blue-500 sm:w-auto"
                        href="pinjam3.php">
                        Member
                    </a>
                </div>
            </div>
        </div>
    </section>
</body>

</html>