// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:straydogs/screens/onboarding/Registeration/login.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5A654F), // الخلفية الخضراء
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Text(
              "Guide them to\na better\nlife",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 36, // تكبير الخط أكثر
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height:
                  MediaQuery.of(context).size.height *
                  0.7, // ارتفاع 70% من الشاشة
              decoration: BoxDecoration(
                color: Color(0xFFF5F1E6), // اللون البيج
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                border: Border(
                  top: BorderSide(
                    color: Color(0xFF7B2F38),
                    width: 8,
                  ), // الحافة النبيتي الغامق
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5), // رفع الأزرار قليلًا
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF596741), // لون زر Login
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: Size(320, 50), // تكبير الزر
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ), // تكبير النص
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD8D2A4), // لون زر Sign Up
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: Size(320, 50), // تكبير الزر
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ), // تكبير النص
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -120, // تحريك الكلب إلى أقصى يمين `Container`
            bottom:
                MediaQuery.of(context).size.height * 0.7 -
                80, // رفع الصورة لتلامس `Container`
            child: Image.asset(
              'images/Screenshot_2025-02-21_115322-removebg-preview.png',
              width: 380, // تكبير الصورة أكثر
            ),
          ),
        ],
      ),
    );
  }
}
