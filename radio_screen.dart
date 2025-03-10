import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850], // Dark background
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/images/Islami.png', // Replace with your Islami logo path
                height: 50, // Adjust as needed
                color: Colors.amber, // Optional: Apply color to the logo
              ),
            ),

            // Radio/Reciters Toggle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle Radio button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Radio'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        // Handle Reciters button press
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.amber),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Reciters'),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Radio List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: const [
                  RadioItem(title: 'Radio Ibrahim Al-Akdar'),
                  RadioItem(title: 'Radio Al-Qaria Yassen'),
                  RadioItem(title: 'Radio Ahmed Al-trabulsi'),
                  RadioItem(title: 'Radio Addokali Mohammad Alalim'),
                ],
              ),
            ),

            // Bottom Navigation Bar (Placeholder)
          ],
        ),
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final String title;

  const RadioItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[700], // Slightly lighter background
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
            color: Colors.blueAccent, width: 2.0), // Blue border for selection
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // Handle play/pause
                },
                icon: const Icon(Icons.play_arrow, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  // Handle volume
                },
                icon: const Icon(Icons.volume_up, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
