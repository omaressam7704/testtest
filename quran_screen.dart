import 'package:flutter/material.dart';
import 'package:islami/core/consts/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';

class QuranScreen extends StatefulWidget {
  static const String route = "/home";

  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  final TextEditingController _suraController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.homeBg,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  AppAssets.islami,
                  height: 50,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white70, width: 1),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            AppAssets.navIcn1,
                            color: AppColors.pri,
                            width: 24,
                            height: 24,
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _suraController,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: "Sura Name",
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Most Recently",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildRecentSuraCard(
                              "Al-Anbiya", "الأنبياء", "112 Verses"),
                          _buildRecentSuraCard(
                              "Al-Fatiha", "الفاتحه", "7 Verses"),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Suras List",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      _buildSuraListItem("Al-Fatiha", "الفاتحه", "7 Verses", 1),
                      _buildSuraListItem(
                          "Al-Baqarah", "البقرة", "286 Verses", 2),
                      _buildSuraListItem(
                          "Aal-E-Imran", "آل عمران", "200 Verses", 3),
                      _buildSuraListItem("An-Nisa", "النساء", "176 Verses", 4),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentSuraCard(
      String englishName, String arabicName, String verses) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white70, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(englishName,
                style: const TextStyle(color: Colors.white, fontSize: 16)),
            Text(arabicName,
                style: const TextStyle(color: Colors.white70, fontSize: 14)),
            Text(verses,
                style: const TextStyle(color: Colors.white70, fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget _buildSuraListItem(
      String englishName, String arabicName, String verses, int index) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white70, width: 1),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.pri,
              shape: BoxShape.circle,
            ),
            child: Text(
              index.toString(),
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(englishName,
                    style: const TextStyle(color: Colors.white, fontSize: 16)),
                Text(verses,
                    style:
                        const TextStyle(color: Colors.white70, fontSize: 12)),
              ],
            ),
          ),
          Text(arabicName,
              style: const TextStyle(color: Colors.white70, fontSize: 14)),
        ],
      ),
    );
  }
}
