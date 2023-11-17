import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/ecommerce_app/ecommerce_bottom_nav_bar.dart';
import 'package:flutter_ui/pages/ecommerce_app/ecommerce_drawer.dart';

class EcommerceHomePage extends StatelessWidget {
  const EcommerceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("My Products"),
        actions: const [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: const EcommerceDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CarouselSlider(
              items: [
                SizedBox(
                  child: Image.network(
                    "https://d2uut6he3s4ryb.cloudfront.net/wp-content/uploads/2019/11/angled-and-infographic-view-of-images-in-flipkart.jpg",
                  ),
                ),
                SizedBox(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2gVnPciGJfmp4upy7eSD26f7lXFy2JVDnA6DsEWdyS7p93u5_FdwdpKSHiKnXY5hET24",
                  ),
                ),
                SizedBox(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScJuHBaxCZ3103NL04Gi4IHQd2dZea-BCVGTOnIXhb8Ggd6xTznUvE05aq05p3RaBG1_o",
                  ),
                ),
              ],
              options: CarouselOptions(),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: const Text(
                    "Our most liked product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    right: 5,
                  ),
                  child: const Text(
                    "View more",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  mostLikedProduct(
                    size,
                    url:
                        "https://images.unsplash.com/photo-1586790170083-2f9ceadc732d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwdCUyMHNoaXJ0fGVufDB8fDB8fHww",
                    price: "200",
                  ),
                  mostLikedProduct(size,
                      url:
                          "https://images.unsplash.com/photo-1611078489935-0cb964de46d6?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      price: "50000"),
                  mostLikedProduct(
                    size,
                    url: "https://m.media-amazon.com/images/I/613qFCwaEnL.jpg",
                    price: "1900",
                  ),
                  mostLikedProduct(size,
                      url:
                          "https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/uk/advisor/wp-content/uploads/2020/11/phones-switch-apps.jpg",
                      price: "80000")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ProductCardWidget(
              size: size,
              description:
                  "Men Printed Rounded Neck Cotton Blend white T-shirt",
              price: "800",
              url:
                  "https://images.unsplash.com/photo-1586790170083-2f9ceadc732d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwdCUyMHNoaXJ0fGVufDB8fDB8fHww",
            ),
            ProductCardWidget(
              size: size,
              description: "Realme smart watch ",
              price: "1500",
              url:
                  "https://rukminim2.flixcart.com/image/416/416/l5fnhjk0/smartwatch/0/t/2/-original-imagg3us6rfzxdgm.jpeg?q=70",
            )
          ],
        ),
      ),
      bottomNavigationBar: const EcommerceBottomNavigationBar(),
    );
  }

  Column mostLikedProduct(Size size,
      {required String url, required String price}) {
    return Column(
      children: [
        Card(
          child: Container(
            height: size.height * 0.3,
            width: size.width * 0.3,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.black),
              borderRadius: BorderRadius.circular(
                10,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  url,
                ),
              ),
            ),
          ),
        ),
        Text(
          price,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
    required this.size,
    required this.description,
    required this.price,
    required this.url,
  });

  final Size size;
  final String description;
  final String price;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      child: Row(
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width * 0.45,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Colors.black,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  url,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            height: size.height * 0.3,
            width: size.width * 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.red,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Buy now"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
