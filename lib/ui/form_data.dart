import 'package:flutter/material.dart';
import 'tampil_data.dart';

class FormDataPage extends StatefulWidget {
  const FormDataPage({super.key});

  @override
  State<FormDataPage> createState() => _FormDataPageState();
}

class _FormDataPageState extends State<FormDataPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFA8B8),
        title: const Text(
          'Form Data Mahasiswa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              
              const SizedBox(height: 20),

              // GIF
              Image.asset(
                'assets/hamtaro.gif',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),

              TextFormField(
                controller: namaController,
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  filled: true,
                  fillColor: const Color(0xFFFFF1F4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Nama tidak boleh kosong' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: nimController,
                decoration: InputDecoration(
                  labelText: 'NIM',
                  filled: true,
                  fillColor: const Color(0xFFFFF1F4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'NIM wajib diisi' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: tahunController,
                decoration: InputDecoration(
                  labelText: 'Tahun Lahir',
                  filled: true,
                  fillColor: const Color(0xFFFFF1F4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.isEmpty ? 'Isi tahun lahirmu' : null,
              ),
              const SizedBox(height: 30),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFA8B8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TampilDataPage(
                          nama: namaController.text,
                          nim: nimController.text,
                          tahun: tahunController.text,
                        ),
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.send, color: Colors.white),
                label: const Text(
                  'Kirim Data',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
