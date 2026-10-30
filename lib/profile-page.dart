import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo({super.key});

  final String userName = "Alfan Fadillah Ramadhan";
  final String role = "Student of Global Institute";

  final List<String> experiences = [
    "Senior Mobile Legend Player",
    "Most Listener Perunggu",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAvatar(userName: userName, role: role),

        const SizedBox(height: 6),

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
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  final String userName;
  final String role;

  const ProfileAvatar({super.key, required this.userName, required this.role});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, size: 50, color: Colors.white),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Fitur Edit belum tersedia saat ini."),
                ),
              );
            },
            icon: const Icon(Icons.edit),
            label: const Text("Edit Profile"),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}