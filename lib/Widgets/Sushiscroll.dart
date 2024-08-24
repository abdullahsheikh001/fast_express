import 'package:flutter/material.dart';

class Sushiscroll extends StatefulWidget {
  const Sushiscroll({super.key});

  @override
  State<Sushiscroll> createState() => _SushiscrollState();
}

class _SushiscrollState extends State<Sushiscroll> {
  int selectedindex = -1;

  final List<String> sushilist = [
    "Nigiri",
    "Chirashi",
    "Gunkan ",
    "California Roll",
    "Oshizushi ",
    "Rainbow Roll",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: sushilist.asMap().entries.map((sushi) {
          int index = sushi.key;
          String sushiapp = sushi.value;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedindex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedindex == index ? Colors.orange : Colors.grey,
              ),
              child: Text(
                sushiapp,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
