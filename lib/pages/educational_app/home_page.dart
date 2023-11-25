import 'package:flutter/material.dart';

class EducationAppHomePage extends StatefulWidget {
  const EducationAppHomePage({super.key});

  @override
  State<EducationAppHomePage> createState() => _EducationAppHomePageState();
}

class _EducationAppHomePageState extends State<EducationAppHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Container(
            height: size.height * 0.25,
            width: size.width,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  20,
                ),
                bottomRight: Radius.circular(
                  20,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.list_sharp,
                        size: 35,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications_none,
                        size: 35,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Hi, User",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search here...",
                      hintStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomCategoryWidget(
                      color: Colors.orange,
                      icon: Icons.category,
                    ),
                    CustomCategoryWidget(
                      color: Colors.purple,
                      icon: Icons.video_library_rounded,
                    ),
                    CustomCategoryWidget(
                      color: Colors.blue,
                      icon: Icons.note_alt,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomCategoryWidget(
                      color: Colors.red,
                      icon: Icons.store,
                    ),
                    CustomCategoryWidget(
                      color: Colors.blue,
                      icon: Icons.play_circle,
                    ),
                    CustomCategoryWidget(
                      color: Colors.orange,
                      icon: Icons.leaderboard,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Courses",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          CustomCourseBox(
            size: size,
            courseTitleOne: "Flutter",
            noOfVideosOne: "55 Videos",
            imagePathOne: "asset/images/flutter logo.png",
            courseTitleTwo: "React JS",
            imagePathTwo: "asset/images/react logo.png",
            noOfVidesTwo: "43 Videos",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomCourseBox(
            size: size,
            courseTitleOne: "Python",
            noOfVideosOne: "91 Videos",
            imagePathOne: "asset/images/python logo.png",
            courseTitleTwo: "Java",
            imagePathTwo: "asset/images/java logo.png",
            noOfVidesTwo: "81 Videos",
          )
        ],
      ),
    );
  }
}

class CustomCourseBox extends StatelessWidget {
  const CustomCourseBox({
    super.key,
    required this.size,
    required this.courseTitleOne,
    required this.noOfVideosOne,
    required this.imagePathOne,
    required this.courseTitleTwo,
    required this.imagePathTwo,
    required this.noOfVidesTwo,
  });

  final Size size;
  final String courseTitleOne;
  final String noOfVideosOne;
  final String imagePathOne;
  final String courseTitleTwo;
  final String noOfVidesTwo;
  final String imagePathTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Ink(
              height: size.height * 0.35,
              width: size.width * 0.43,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imagePathOne),
                  Text(
                    courseTitleOne,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    noOfVideosOne,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Ink(
              height: size.height * 0.35,
              width: size.width * 0.43,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePathTwo,
                  ),
                  Text(
                    courseTitleTwo,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    noOfVidesTwo,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCategoryWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  const CustomCategoryWidget({
    super.key,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: color,
      child: Center(
        child: Icon(
          icon,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
