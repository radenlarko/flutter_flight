import 'package:flutter/material.dart';
import 'package:flutter_citilink/pages/home_page.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            height: size.height / 1.8,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset("assets/start.jpg"),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(children: [
              const Text(
                "Flights with Citilink",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                  "Find Airline Ticket Promos to All Destinations, Easy & Cheap",
                  style: TextStyle(color: Colors.black38, fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomePage();
                })),
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(16)),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              )
            ]),
          )
        ],
      )),
    );
  }
}
