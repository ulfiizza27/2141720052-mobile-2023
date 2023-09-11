void main() {
    String nama = "Ulfi Mustatiq Abidatul Izza", nim = "2141720051";
    for (int angka = 0; angka <= 201; angka++) {
        if (bilPrima(angka)) {
            print('Bilangan prima ditemukan: $angka');
            print('Nama\t: $nama');
            print('NIM\t: $nim\n');
        }
    }
}

bool bilPrima(int angka) {
    if (angka < 2) {
        return false;
    }
    for (int i = 2; i <= angka / 2; i++) {
        if (angka % i == 0) {
        return false;
        }
    }
    return true;
}