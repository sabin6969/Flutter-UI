import 'package:flutter/material.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({super.key});

  @override
  State<SearchBarPage> createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  final TextEditingController _searchController = TextEditingController();

  List<Map<String, dynamic>> userData = [
    {
      "name": "Sabin",
      "age": 20,
      "address": "Pokhara",
    },
    {
      "name": "Smith",
      "age": 22,
      "address": "Sunwal",
    },
    {
      "name": "Sandesh",
      "age": 19,
      "address": "Raskot",
    },
    {
      "name": "Amit",
      "age": 22,
      "address": "Dhangadhi",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Search"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              controller: _searchController,
              onChanged: (String value) {
                setState(() {});
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: "Search here..",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: userData.length,
              itemBuilder: (context, index) {
                String name = userData[index]["name"];
                if (_searchController.text.isEmpty) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Card(
                      child: ListTile(
                        title: Text(userData[index]["name"]),
                        subtitle: Text(
                          userData[index]["address"],
                        ),
                        tileColor: index % 2 == 0 ? Colors.amber : Colors.blue,
                      ),
                    ),
                  );
                } else if (name
                    .toLowerCase()
                    .contains(_searchController.text.toLowerCase().trim())) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Card(
                      child: ListTile(
                        title: Text(userData[index]["name"]),
                        subtitle: Text(userData[index]["address"]),
                      ),
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
