| Nama                                | No | NIM        |
| ----------------------------------- | -- | ---------- |
| Ulfi Mustatiq Abidatul Izza         | 26 | 2141720052 |

# Praktikum 1: Dart Streams

## **Soal 1**

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

- Gantilah warna tema aplikasi sesuai kesukaan Anda.

**Jawab:**

![Screenshot stream_ulfi](./docs/soal1.png)

- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

## **Soal 2**

- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel `colors` tersebut.

**Jawab:**

![Screenshot stream_ulfi](./docs/soal2.png)

- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

## **Soal 3**

- Jelaskan fungsi keyword yield* pada kode tersebut!

**Jawab:**
Keyword `yield*` digunakan dalam Dart untuk memberikan hasil dari suatu async generator atau stream. Dalam konteks ini, yield* digunakan untuk menyediakan nilai-nilai dari suatu stream yang terus berjalan.

- Apa maksud isi perintah kode tersebut?

**Jawab:**
- `Stream.periodic`: Membuat stream yang menghasilkan nilai berulang setiap durasi tertentu.
- `const Duration(seconds: 1)`: Durasi setiap berapa detik stream akan menghasilkan nilai baru.
- `(int t)`: Fungsi yang akan dijalankan setiap kali stream menghasilkan nilai. `t` adalah indeks waktu (dalam detik) sejak stream dimulai.
- `int index = t % colors.length;`: Menghitung indeks warna yang akan digunakan. Ini memastikan bahwa kita tidak akan keluar dari indeks warna yang ada.
- `return colors[index];`: Mengembalikan warna sesuai dengan indeks yang dihitung.
- `async*`: Menandakan bahwa metode ini adalah asynchronous generator, dan `yield*` digunakan untuk mengirimkan nilai-nilai dari stream ke konsumen stream (pemanggil metode `getColors()`).

- Lakukan commit hasil jawaban Soal 3 dengan pesan "W13: Jawaban Soal 3"

## **Soal 4**

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

**Jawab:**

![Screenshot stream_ulfi](./docs/soal4.gif)

- Lakukan commit hasil jawaban Soal 4 dengan pesan "W13: Jawaban Soal 4"

## **Soal 5**

- Jelaskan perbedaan menggunakan `listen` dan `await` for (langkah 9) !

**Jawab:**

1. Metode ChangeColor Menggunakan `listen`:

```dart
void changeColor() async {
  colorStream.getColors().listen((eventColor) {
    setState(() {
      bgColor = eventColor;
    });
  });
}
```
- Pendekatan `listen` digunakan ketika ingin terus mendengarkan perubahan pada stream tanpa harus menunggu pengiriman setiap elemen secara individual.

- Fungsi `listen` menerima callback yang akan dipanggil setiap kali ada perubahan pada stream.

- Ini bersifat asynchronous, dan callback dipanggil sesuai dengan perubahan pada stream.

2. Metode ChangeColor Menggunakan `await for` (Langkah 9):

```dart
void changeColor() async {
  await for (var eventColor in colorStream.getColors()) {
    setState(() {
      bgColor = eventColor;
    });
  }
}
```
- Pendekatan `await for` digunakan ketika ingin menunggu dan mengambil setiap elemen dari stream satu per satu.

- Ini bersifat synchronous, dan loop akan menunggu sampai ada elemen berikutnya yang dikirimkan oleh stream sebelum melanjutkan eksekusi.

- `await for` cocok untuk situasi di mana ingin menanggapi setiap elemen stream secara individual.

- Lakukan commit hasil jawaban Soal 5 dengan pesan "W13: Jawaban Soal 5"

# Praktikum 2: Stream controllers dan sinks

## **Soal 6**

- Jelaskan maksud kode langkah 8 dan 10 tersebut!

**Jawab:**

a. Langkah 8 (Edit initState):

```dart
@override
void initState() {
  numberStream = NumberStream();
  NumberStreamController = numberStream.controller;
  Stream<int> stream = NumberStreamController.stream;
  stream.listen((event) {
    setState(() {
      lastNumber = event;
    });
  });
  super.initState();
  // colorStream = ColorStream();
  // changeColor();
}
```
- `initState` adalah metode khusus dalam widget Flutter yang dipanggil ketika widget pertama kali dibuat.

- Pada langkah ini, kita membuat instance dari `NumberStream`, yang merupakan kelas untuk mengelola stream angka.

- `NumberStreamController` adalah objek `StreamController<int>` yang digunakan untuk mengontrol aliran data dari stream.

- Dengan mengambil stream dari `NumberStreamController`, kita menggunakan metode `listen` untuk mendengarkan perubahan pada stream tersebut.

- Ketika ada perubahan pada stream (yaitu, ketika angka baru ditambahkan), metode `setState` dipanggil untuk memperbarui tampilan dengan nilai angka terbaru (`lastNumber`).

b. Langkah 10 (Tambah method addRandomNumber):

```dart
void addRandomNumber() {
  Random random = Random();
  int myNum = random.nextInt(10);
  numberStream.addNumberToSink(myNum);
}
```
- Metode `addRandomNumber` ditambahkan untuk menambahkan angka acak ke dalam stream.

- Dalam metode ini, kita menggunakan kelas `Random` untuk menghasilkan angka acak antara 0 dan 9 (`random.nextInt(10)`).

- Kemudian, kita menggunakan metode `addNumberToSink` dari `numberStream` untuk menambahkan angka tersebut ke dalam sink stream, sehingga angka tersebut dapat dikirimkan ke widget dan ditampilkan di antarmuka pengguna.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

**Jawab:**

![Screenshot stream_ulfi](./docs/soal6.gif)

- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 6".

