import 'package:flutter/material.dart';

class EcommerceDrawer extends StatelessWidget {
  const EcommerceDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://www.shutterstock.com/image-photo/close-portrait-young-smiling-handsome-260nw-1180874596.jpg",
              ),
            ),
            accountName: Text("Sabin Poudel"),
            accountEmail: Text("sabinpoudel6969@gmail.com"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.shopping_cart,
            ),
            title: const Text("Your orders"),
            subtitle: const Text("Orders made"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.shopping_cart_outlined,
            ),
            title: const Text("Cart"),
            subtitle: const Text("Items added"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text("Settings"),
            subtitle: const Text("Manage your prefrences"),
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
            ),
            onTap: () {},
            title: const Text("Logout"),
            subtitle: const Text("Logout from this app"),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Developed by Sabin Poudel",
            ),
          ),
        ],
      ),
    );
  }
}
