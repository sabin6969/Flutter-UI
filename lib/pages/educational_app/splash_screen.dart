import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/educational_app/home_page.dart';

class EducationalAppSplashScreen extends StatefulWidget {
  const EducationalAppSplashScreen({super.key});

  @override
  State<EducationalAppSplashScreen> createState() =>
      _EducationalAppSplashScreenState();
}

class _EducationalAppSplashScreenState
    extends State<EducationalAppSplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.55,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      80,
                    ),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    "asset/images/edu app icon.png",
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Container(
                  height: size.height * 0.45,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        80,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Learning is Everything",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Learning with pleasure with EduConnect, wherever you are",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          elevation: 4,
                          height: size.height * 0.06,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          color: Colors.purple,
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const EducationAppHomePage(),
                              ),
                            );
                          },
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
