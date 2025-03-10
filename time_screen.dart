import 'package:flutter/material.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], // Dark background
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blueAccent, width: 2), // Blue border
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Islami.png', // Replace with your Islami logo path
                    height: 50,
                    color: Colors.amber, // Optional: Apply color to the logo
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Pray Time',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Tuesday',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        '16 Jul, 2024',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const Text(
                        '09 Muh, 1446',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Prayer Times
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildPrayerTime('04', 'ise'),
                  _buildPrayerTime('01:01', 'Dhuhr', suffix: 'PM'),
                  _buildPrayerTime('04:38', 'ASR', suffix: 'PM'),
                  _buildPrayerTime('07:57', 'Maghrib', suffix: 'PM'),
                  _buildPrayerTime('09:', 'Ish', suffix: 'PM'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Next Prayer Time
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Next Pray - 02:32',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.notifications_active, color: Colors.amber),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Azkar Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Azkar',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildAzkarCard('Evening Azkar',
                      'assets/images/evening_azkar.png'), // Replace with your image path
                  _buildAzkarCard('Morning Azkar',
                      'assets/images/morning_azkar.png'), // Replace with your image path
                ],
              ),
            ),

            const Spacer(),

            // Bottom Navigation Bar (Placeholder)
            Container(
              height: 60,
              color: Colors.grey[800],
              child: const Center(
                child: Text(
                  'Bottom Navigation Bar (Placeholder)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrayerTime(String time, String label, {String? suffix}) {
    return Column(
      children: [
        Text(
          time,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        if (suffix != null)
          Text(
            suffix,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
      ],
    );
  }

  Widget _buildAzkarCard(String title, String imagePath) {
    return Expanded(
      child: Card(
        color: Colors.grey[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 80,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
