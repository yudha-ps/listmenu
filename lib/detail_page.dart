import 'package:flutter/material.dart';
import 'package:listmenuu/minuman.dart';
import 'package:listmenuu/styles.dart';

class DetailPage extends StatelessWidget {
  final Minuman minuman;

  const DetailPage({
    super.key,
    required this.minuman,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(minuman.gambar, scale: 0.5),
                const Positioned(
                  // Mengatur posisi tombol kembali
                  top: 40,
                  left: 10,
                  child: ButtonBack(),
                ),
                const Positioned(
                  // Mengatur posisi tombol suka
                  top: 40,
                  right: 10,
                  child: ButtonLike(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), // Menambahkan padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    // Memusatkan teks
                    child: Text(
                      minuman.nama, // Nama minuman
                      style: textHeader3,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    minuman.deskripsi, // Deskripsi minuman
                    style: const TextStyle(color: Colors.black38),
                  ),
                  const SizedBox(height: 8),
                  // Mengubah Container menjadi ElevatedButton
                  btnBuy(),
                  const SizedBox(height: 8),
                  // Menambahkan gambar lain dalam scroll horizontal
                  SizedBox(
                    height: 100, // Tinggi gambar
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // Misalkan minuman.gambarLain adalah list dari gambar
                          for (var gambar in minuman
                              .gambarLain) // Ganti dengan list gambar yang sesuai
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 8.0), // Jarak antar gambar
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  gambar,
                                  height: 150,
                                  width: 150, // Sesuaikan ukuran gambar
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Center(
                                        child: Text('Gambar tidak tersedia'));
                                  },
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton btnBuy() {
    return ElevatedButton(
      onPressed: () {
        // Aksi ketika tombol ditekan
        print('Harga: ${minuman.harga}'); // Contoh aksi
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green, // Warna latar belakang tombol
        padding: const EdgeInsets.symmetric(
            vertical: 8.0, horizontal: 12.0), // Padding di dalam tombol
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Sudut membulat
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Memusatkan konten
        children: [
          Icon(Icons.shopping_cart, color: Colors.white), // Ikon belanja
          const SizedBox(width: 8), // Jarak antara ikon dan teks
          Text(
            minuman.harga, // Harga minuman
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white, // Warna teks
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
      ),
    );
  }
}

class ButtonLike extends StatefulWidget {
  const ButtonLike({super.key});

  @override
  State<StatefulWidget> createState() => _ButtonLike();
}

class _ButtonLike extends State<ButtonLike> {
  bool isLiked = false; // Menyimpan status suka

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        onPressed: () {
          setState(() {
            isLiked = !isLiked; // Mengubah status suka saat tombol ditekan
          });
        },
        icon: Icon(
          isLiked ? Icons.favorite : Icons.favorite_border, // Ikon dinamis
          color: Colors.white,
        ),
      ),
    );
  }
}
