import 'package:flutter/material.dart';

class StackLoginPage extends StatefulWidget {
  const StackLoginPage({super.key});

  @override
  State<StackLoginPage> createState() => _StackLoginPageState();
}

class _StackLoginPageState extends State<StackLoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: size.height * 0.4,
                ),
                child: Container(
                  height: size.height * 0.5,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        50,
                      ),
                      bottomRight: Radius.circular(
                        50,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "asset/images/react logo.png",
                      height: size.height * 0.3,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "SKIP",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: size.height * 0.35,
            left: size.width * 0.05,
            child: Container(
              height: size.height * 0.5,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Welcome to App Name.",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Discover Amazing Thing Near Around You.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Column(
                      children: [
                        customAuthButtons(
                          context,
                          "Sign In",
                          Colors.white,
                          size,
                          Colors.blue,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        customAuthButtons(
                          context,
                          "Sign Up",
                          Colors.black,
                          size,
                          Colors.grey.shade200,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Row(
                      children: [
                        Container(
                          height: size.height * 0.0011,
                          width: size.width * 0.22,
                          color: Colors.black,
                        ),
                        const Text(
                          " Or connect using ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: size.height * 0.0011,
                          width: size.width * 0.22,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.tiktok,
                          size: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget customAuthButtons(BuildContext context, String buttonName,
    Color textColor, Size size, Color boxColor) {
  return Container(
    height: size.height * 0.06,
    width: size.width,
    decoration: BoxDecoration(
      border: Border.all(
        width: 1.2,
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(
        10,
      ),
      color: boxColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          buttonName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ],
    ),
  );
}
