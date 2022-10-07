import 'package:flutter/material.dart';
import 'package:flutter_citilink/widgets/destination_item.dart';
import 'package:flutter_citilink/widgets/product_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black54,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.black54,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.black54,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.black54,
              ),
              label: '')
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Yos Sularko",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("assets/pm.png"),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 223, 200, 228),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/plane.png",
                      width: 100,
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "MOODDAY",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const SizedBox(
                          width: 120,
                          child: Text(
                            "Promo menarik setiap hari senin",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          height: 35,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Center(
                            child: Text(
                              "Get it Now!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                height: 48,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(95, 179, 173, 173),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(children: const [
                  Icon(
                    Icons.pin_drop_outlined,
                    size: 32,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "From",
                    style: TextStyle(color: Colors.black54),
                  )
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                height: 48,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(95, 179, 173, 173),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(children: const [
                  Icon(
                    Icons.map_outlined,
                    size: 32,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "To",
                    style: TextStyle(color: Colors.black54),
                  )
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductItem(
                      imagePath: "assets/plane.png",
                      imageName: "Flight",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ProductItem(
                      imagePath: "assets/transportation.png",
                      imageName: "Transportation",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ProductItem(
                      imagePath: "assets/hotel.png",
                      imageName: "Hotel",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ProductItem(
                      imagePath: "assets/entertainment.png",
                      imageName: "Entertainment",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Citinerary",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DestinationItem(
                      image: "assets/1.png",
                      name: "Bali",
                    ),
                    DestinationItem(
                      image: "assets/2.png",
                      name: "Bandung",
                    ),
                    DestinationItem(
                      image: "assets/3.png",
                      name: "Jakarta",
                    ),
                    DestinationItem(
                      image: "assets/4.png",
                      name: "Belitung",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
