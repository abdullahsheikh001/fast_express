import 'package:flutter/material.dart';

class Detailwidget extends StatelessWidget {
  const Detailwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.1)),
          child: const Column(
            children: [
              Text(
                "Type",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Uramaki",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.1)),
              child:const  Column(
            children: [
              Text(
                "Delivery",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "45 Minutes",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.1)),
              child: const Column(
            children: [
              Text(
                "Ingredients",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Full Tuna",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
