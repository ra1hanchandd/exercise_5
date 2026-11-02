import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo({super.key});

  final String userName = "Muhammad Raihan Chandra Pratama";
  final String role = "Mahasiswa Global Institute";

  final List<String> experiences = [
    "Ketua Pelaksana PKKMB 2026",
    "Anggota Badan Eksekutif Mahasiswa Global Institute",
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

class StatItem extends StatelessWidget {
  final String value;
  final String label;

  const StatItem({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(label),
      ],
    );
  }
}

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        StatItem(value: '12', label: 'Projects'),
        StatItem(value: '120', label: 'Followers'),
        StatItem(value: '80', label: 'Following'),
      ],
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String experience;

  const ExperienceCard({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      child: ListTile(
        leading: const Icon(Icons.work, color: Colors.blueAccent),
        title: Text(experience),
      ),
    );
  }
}
