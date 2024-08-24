import 'package:fast_express/Data/Data.dart';
import 'package:flutter/material.dart';

class Premiumgrid extends StatefulWidget {
  const Premiumgrid({super.key});

  @override
  State<Premiumgrid> createState() => _PremiumgridState();
}

class _PremiumgridState extends State<Premiumgrid>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationControllerdrid2;

  @override
  void dispose() {
    _animationControllerdrid2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationControllerdrid2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        lowerBound: 0,
        upperBound: 1);
    _animationControllerdrid2.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationControllerdrid2,
      builder: (context, child) => ScaleTransition(
          scale: Tween<double>(begin: 0.2, end: 1.0).animate(CurvedAnimation(
              parent: _animationControllerdrid2, curve: Curves.easeInOutCubicEmphasized)),
          child: child),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Center(
            child: Text(
              "Premium Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.orange),
        ),
        body: GridView.builder(
          itemCount: preminumtilelist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 3 / 4),
          itemBuilder: (context, index) {
            final item = preminumtilelist[index];

            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Column(
                children: [
                  Image.asset(item.imageurl),
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    item.subtitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.orange,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "\$${item.price}",
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
