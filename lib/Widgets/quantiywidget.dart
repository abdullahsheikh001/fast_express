import 'package:flutter/material.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({super.key});

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int quantity = 0;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.orange,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: increment,
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            iconSize: 18,  
            padding: EdgeInsets.zero, 
          ),
          SizedBox(
            width: 10,  
            child: Center(
              child: Text(
                "$quantity",
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
          IconButton(
            onPressed: decrement,
            icon: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
            iconSize: 18,  
            padding: EdgeInsets.zero,  
          ),
        ],
      ),
    );
  }
}
