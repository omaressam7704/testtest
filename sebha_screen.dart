import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > 33) {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Image (Dimmed)
          Positioned.fill(
            child: Image.asset(
              'assets/images/sibhaBg.png', // Replace with your image path
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.6), // Dim the image
              colorBlendMode: BlendMode.darken,
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                // Islami Logo
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset(
                    'assets/images/Islami.png', // Replace with your logo path
                    color: AppColors.pri,
                    height: 50, // Adjust as needed
                  ),
                ),

                const SizedBox(height: 20),

                // Text: سَبِّحِ اسْمَ رَبِّكَ الأعلى
                const Text(
                  'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 30),

                // Circle with Beads (Clickable)
                GestureDetector(
                  onTap: _incrementCounter,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Sebha.png', // Replace with your sebha beads image path
                      width: 250, // Adjust size as needed
                      height: 250, // Adjust size as needed
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Text: سبحان الله
                const Text(
                  'سبحان الله',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 10),

                // Number (Counter)
                Text(
                  '$_counter',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
