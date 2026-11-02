import 'package:flutter/material.dart';
import 'profile-page.dart';
void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  MainApp({super.key});
  
  final String userName = 'Muhammad Raihan Chandra Pratama';
  final String role = 'Mahasiswa Global Institute';
  final List<String> experiences = [
    'Ketua Pelaksana PKKMB 2026',
    'Anggota Badan Eksekutif Mahasiswa Global Institute',
  ];
  @override
  Widget build(BuildContext context) {
return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Profil',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil Pengguna'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 12),

              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),

              const SizedBox(height: 16),

              Text(
                userName,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              Text(
                role,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24),

              const ProfileStats(),

              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Fitur edit belum aktif pada modul statis.',
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),

              const SizedBox(height: 24),

              const Divider(),

              const SizedBox(height: 12),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pengalaman',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 12),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 4),
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return ExperienceCard(experience: experiences[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}