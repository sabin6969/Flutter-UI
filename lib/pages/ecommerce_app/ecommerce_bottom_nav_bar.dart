import 'package:flutter/material.dart';

class EcommerceBottomNavigationBar extends StatelessWidget {
  const EcommerceBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
          ),
          label: "Cart",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile")
      ],
    );
  }
}
