import 'package:flutter/material.dart';

class StackDashboardDesign extends StatelessWidget {
  const StackDashboardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.3,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      60,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.menu,
                            size: 40,
                          ),
                          Container(
                            height: size.height * 0.06,
                            width: size.width * 0.1,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D",
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Dear Sabin",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Last updated 2023/11/24",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search here...",
                          hintStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.3),
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: Container(
                  height: size.height * 0.7,
                  width: size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        60,
                      ),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                    child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 60,
                      crossAxisCount: 2,
                      children: const [
                        CategoryWidget(
                          icon: Icon(
                            Icons.class_,
                            color: Colors.white,
                            size: 40,
                          ),
                          categoryTitle: "Classes",
                          backgroundColor: Colors.purple,
                        ),
                        CategoryWidget(
                          icon: Icon(
                            Icons.category,
                            color: Colors.black,
                            size: 40,
                          ),
                          categoryTitle: "Category",
                          backgroundColor: Colors.orange,
                        ),
                        CategoryWidget(
                          icon: Icon(
                            Icons.live_tv,
                            size: 40,
                            color: Colors.white,
                          ),
                          categoryTitle: "Live Classes",
                          backgroundColor: Colors.red,
                        ),
                        CategoryWidget(
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          categoryTitle: "Assignments",
                          backgroundColor: Colors.purple,
                        ),
                        CategoryWidget(
                          icon: Icon(
                            Icons.leaderboard,
                            size: 40,
                            color: Colors.white,
                          ),
                          categoryTitle: "Leaderboard",
                          backgroundColor: Colors.pink,
                        ),
                        CategoryWidget(
                          icon: Icon(
                            Icons.percent,
                            size: 40,
                            color: Colors.white,
                          ),
                          categoryTitle: "View grades",
                          backgroundColor: Colors.orange,
                        ),
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

class CategoryWidget extends StatelessWidget {
  final Icon icon;
  final String categoryTitle;
  final Color backgroundColor;
  const CategoryWidget({
    super.key,
    required this.icon,
    required this.categoryTitle,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            categoryTitle,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
