import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
    _pageController.addListener(_onPageChanged);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged() {
    setState(() {
      _currentPage = _pageController.page!.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image for the whole screen
          Positioned.fill(
            child: Image.asset(
              'assets/images/hadithBg.png', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                // Header
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Islami',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                ),

                // Hadith Cards List (PageView)
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount:
                        5, // Placeholder count, replace with API data later
                    itemBuilder: (context, index) {
                      // Calculate card scale based on its position
                      final scale = index == _currentPage ? 1.2 : 1.0;

                      return Transform.scale(
                        scale: scale,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          margin: const EdgeInsets.only(right: 16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.amber, width: 2),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Stack(
                            children: [
                              // Background Image for the card
                              Positioned.fill(
                                child: Image.asset(
                                  'assets/images/hadithCard.png', // Replace with your card background image path
                                  fit: BoxFit.cover,
                                ),
                              ),

                              // Add a background color with opacity
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.pri.withValues(
                                        alpha: 0.8), // Adjust opacity as needed
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),

                              // Hadith Content
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'الحديث الأول',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Text(
                                        'عن أمير المؤمنين أبي حفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عليه وسلم يقول : ( إنما الأعمال بالنيات وإنما لكل امرئ ما نوى . فمن كانت هجرته إلى الله ورسوله فهجرته إلى الله ورسوله ومن كانت هجرته لدنيا يصيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه ). رواه إمام المحد ثين أبو عبد الله محمد بن إسماعيل بن ابراهيم بن المغيرة بن برد زبه البخاري الجعفي، [رقم : 1) وابو الحسين مسلم بن الحجاج بن مسلم القشيري النيسابوري [رقم : 1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه.',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
