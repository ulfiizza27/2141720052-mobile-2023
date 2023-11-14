| Nama                                | No | NIM        |
| ----------------------------------- | -- | ---------- |
| Ulfi Mustatiq Abidatul Izza         | 26 | 2141720052 |

# Praktikum 1: Mengunduh Data dari Web Service (API)

## **Soal 1**

Tambahkan **nama panggilan** Anda pada title app sebagai identitas hasil pekerjaan Anda.

![Screenshot books](./docs/soal1.png)

## **Soal 2**

- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.

![Screenshot books](./docs/soal2a.png)

- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".

![Screenshot books](./docs/soal2b.png)

## **Soal 3**

- Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!

```dart
result = value.body.toString().substring(0, 450);
```
Fungsi **substring(0, 450)** digunakan untuk mengambil sebagian dari string yang dihasilkan oleh value.body.toString(). Pada kasus ini, dimulai dari karakter ke-0 hingga karakter ke-449. Artinya, hanya mengambil 450 karakter pertama dari string tersebut.

```dart
}).catchError((_){
   result = 'An error occurred';
   setState(() {});
});
```
**catchError** digunakan untuk menangkap dan menangani kesalahan (error) yang mungkin terjadi selama eksekusi **getData()**. Jika ada kesalahan, blok kode dalam **catchError** akan dieksekusi. Dalam hal ini, jika terjadi kesalahan selama pemanggilan **getData()**, variabel **result** akan diatur menjadi string "An error occurred", dan kemudian **setState((){})** dipanggil untuk memicu pembaruan tampilan.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".

![Screenshot books](./docs/soal3gif.gif)

# Praktikum 2: Menggunakan await/async untuk menghindari callbacks

## **Soal 4**

- Jelaskan maksud kode langkah 1 dan 2 tersebut!

Langkah 1 menambahkan tiga metode asinkron (`returnOneAsync`, `returnTwoAsync`, dan `returnThreeAsync`) yang mensimulasikan operasi asinkron dengan penundaan waktu. 

Langkah 2 menambahkan metode `count` yang menjalankan operasi asinkron pada ketiga metode sebelumnya, menghitung totalnya, dan memperbarui tampilan UI dengan hasilnya.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".

![Screenshot books](./docs/soal4gif.gif)

## **Soal 5**

- Jelaskan maksud kode langkah 2 tersebut!

1. Variable `completer`:

```dart
late Completer completer;
```
Variabel ini bertipe Completer, digunakan untuk menyelesaikan (complete) suatu Future. Dalam konteks ini, completer akan digunakan untuk menghasilkan hasil dari operasi asinkron yang dilakukan oleh metode calculate.

2. Metode `getNumber()`:

```dart
Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}
```
Metode ini membuat instance baru dari Completer, kemudian memanggil metode calculate() dan mengembalikan hasil sebagai Future. Sebagai contoh, jika calculate menghasilkan angka 42, maka getNumber() akan mengembalikan Future dengan nilai 42.

3. Metode `calculate()`:
```dart
Future calculate() async {
  await Future.delayed(const Duration(seconds: 5));
  completer.complete(42);
}
```
Metode ini mensimulasikan operasi asinkron yang memerlukan waktu (dalam kasus ini, penundaan selama 5 detik dengan Future.delayed) dan kemudian menggunakan completer.complete(42) untuk menyelesaikan Future dengan nilai 42.

**Kesimpulan:**
Langkah 2 menambahkan mekanisme untuk menghasilkan nilai asinkron dengan menggunakan Completer dan dua metode getNumber() dan calculate(). Dengan ini, saat tombol "GO!" ditekan, getNumber() akan memulai operasi asinkron, dan setelah selesai, nilai 42 akan diterima dan ditampilkan di antarmuka pengguna.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5".

![Screenshot books](./docs/soal5.gif)

## **Soal 6**
- Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!

**Langkah 2**

```dart
Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}
```

Pada langkah 2, metode getNumber() memulai operasi asinkron dengan memanggil metode calculate(), dan kemudian mengembalikan Future dari completer. Kesalahan yang mungkin terjadi selama eksekusi operasi asinkron tidak ditangani secara eksplisit.

**Langkah 5**

```dart
calculate2() async {
  try {
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
  } catch (_) {
    completer.completeError({});
  }
}
```

Pada langkah 5, metode calculate2() diubah untuk menangani kesalahan menggunakan blok try-catch. Jika terjadi kesalahan selama penundaan, completer akan menyelesaikan dengan kesalahan.

**Langkah 6**

```dart
ElevatedButton(
  child: const Text('GO!'),
  onPressed: () {
    getNumber().then((value) {
      setState(() {
        result = value.toString();
      });
    }).catchError((e) {
      result = 'An error occurred';
    });
  },
)
```
Pada langkah 6, pada fungsi onPressed yang dipanggil saat tombol "GO!" ditekan, penanganan kesalahan ditambahkan menggunakan .catchError. Jika terjadi kesalahan selama operasi asinkron di dalam getNumber(), maka blok catchError akan dijalankan dan variabel result akan diatur sebagai 'An error occurred'.

Jadi, perbedaannya adalah langkah 2 tidak memiliki penanganan kesalahan yang eksplisit, sedangkan langkah 5-6 menambahkan mekanisme untuk menangani kesalahan selama operasi asinkron.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".

![Screenshot books](./docs/soal6.gif)

# Praktikum 4: Memanggil Future secara paralel

## **Soal 7**
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 7".

![Screenshot books](./docs/soal7.gif)

## **Soal 8**
Jelaskan maksud perbedaan kode langkah 1 dan 4!

**Langkah 1** menggunakan `FutureGroup` untuk mengelola sekelompok future, menambahkan setiap future ke dalam kelompok, menutup kelompok, dan kemudian menunggu hingga semua future selesai. Setelah itu, hasil dari masing-masing future dijumlahkan dan diupdate ke dalam variabel `result` menggunakan `setState`.

**Langkah 4** menggunakan `Future.wait` untuk menunggu sekelompok future selesai. `Future.wait` mengembalikan future tunggal yang menyelesaikan ketika semua future di dalam list selesai. Setelah itu, hasil dari masing-masing future dijumlahkan dan diupdate ke dalam variabel `result` menggunakan `setState`.

Perbedaan utama terletak pada mekanisme pengelolaan future: `FutureGroup` memberikan API yang lebih spesifik untuk mengelola kelompok future, sementara `Future.wait` digunakan untuk menunggu sekelompok future selesai dan memberikan future tunggal sebagai hasil.

# Praktikum 5: Menangani Respon Error pada Async Code

## **Soal 9**
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 9".

![Screenshot books](./docs/soal9.gif)

## **Soal 10**

Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

![Screenshot books](./docs/soal10.gif)

**Langkah 1** 

```dart
Future returnError() async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('Something terrible happened!');
}
```
menambahkan metode `returnError()` yang mensimulasikan operasi asinkron dengan penundaan selama 2 detik dan kemudian melempar exception.

**Langkah 4**

```dart
Future handleError() async {
  try {
    await returnError();
  } catch (error) {
    setState(() {
      result = error.toString();
    });
  } finally {
    print('Complete');
  }
}
```
 menambahkan metode `handleError()` yang mencoba menjalankan `returnError()` dengan menggunakan blok `try-catch`. Jika terjadi exception, pesan error diambil dan diatur ke dalam variabel `result`, sementara itu, pesan 'Complete' dicetak ke konsol dalam blok `finally`. Ini memungkinkan penanganan dan presentasi yang lebih terkendali dari exception di dalam aplikasi.

 # Praktikum 6: Menggunakan Future dengan StatefulWidget

 ## **Soal 11**
Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

![Screenshot books](./docs/soal11.png)

![Screenshot books](./docs/soal11.jpeg)

