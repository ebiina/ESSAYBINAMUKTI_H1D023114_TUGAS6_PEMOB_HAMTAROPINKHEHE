import 'package:flutter/material.dart';

class TampilDataPage extends StatelessWidget {
  final String nama;
  final String nim;
  final String tahun;

  const TampilDataPage({
    super.key,
    required this.nama,
    required this.nim,
    required this.tahun,
  });

  int hitungUmur(String tahunLahir) {
    try {
      final tahunInt = int.parse(tahunLahir);
      final tahunSekarang = DateTime.now().year;
      return tahunSekarang - tahunInt;
    } catch (e) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final umur = hitungUmur(tahun);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkenalan'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 10,
          margin: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          color: Colors.pink.shade50,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/temenhamtaro.gif',
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),
                Text(
                  "Hai! Nama saya $nama,\nNIM saya $nim,\ndan umur saya $umur tahun",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  label: const Text(
                    'Kembali',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
