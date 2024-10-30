import 'package:flutter/material.dart';
import 'package:listmenuu/list_minuman.dart'; // Pastikan file ini mengandung ListItemMinuman
import 'package:listmenuu/minuman.dart';
import 'package:listmenuu/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Minuman> listMinuman =
        Minuman.dummyData; // Daftar menu dari data dummy

    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.list_alt, size: 30),
              Text(
                'List Menu Makanan dan minuman',
                style:
                    textHeader1, // Pastikan style textHeader1 didefinisikan di styles.dart
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: listMinuman.length, // Menampilkan jumlah item
              itemBuilder: (context, index) {
                return ListItemMinuman(
                  listMinuman: listMinuman[
                      index], // Mengirim data minuman ke widget ListItemMinuman
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
