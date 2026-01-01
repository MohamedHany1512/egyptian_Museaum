import 'package:egyptain_museaum/features/on_boarding/screens/first_screen.dart';
import 'package:egyptain_museaum/features/on_boarding/screens/second_screen.dart';
import 'package:egyptain_museaum/features/on_boarding/screens/third_screen.dart';
import 'package:egyptain_museaum/core/widgets/custom_button.dart';
import 'package:egyptain_museaum/features/on_boarding/widgets/page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  final int totalPages = 3; // عدد الصفحات الحقيقية

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      
        children: [
          Expanded(
            flex: 7,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) => setState(() {
                _currentPage = index;
              }),
              physics: const NeverScrollableScrollPhysics(),
              children: const [FirstScreen(), SecondScreen(), ThirdScreen()],
            ),
          ),
      
        
          PageIndicator(totalPages: totalPages, currentPage: _currentPage),
      
               const  SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: _currentPage == totalPages - 1
                    ? 'Begin your journey'
                    : 'Next',
                onTap: () {
                  if (_currentPage < totalPages - 1) {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  } else {
                    Navigator.pushReplacementNamed(context, "/RegisterScreen");
                  }
               
                },
              ),
            ),
          ),
         const  SizedBox(height: 80)
        ],
      ),
    );
  }
}
