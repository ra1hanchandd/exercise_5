import 'package:flutter/material.dart';
void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  MainApp({super.key});
  
  final String userName = 'Muhammad Raihan Chandra Pratama';
  final String role = 'Ketua';
  final List<String> experiences = [
    'Ketua Pelaksana PKKMB 2026', 
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [         
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              
            
              const SizedBox(width: 16),
              
              Column(
                children: [
                  Text(
                    userName,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    role,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        '12',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('Projects'),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        '120',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('Followers'),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        '80',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('Following'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Fitur edit belum aktif pada modul statis.'))
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}