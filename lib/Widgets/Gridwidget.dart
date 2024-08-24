import 'package:fast_express/Data/Data.dart';
import 'package:flutter/material.dart';

class Gridwidget extends StatelessWidget {
  const Gridwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: tilelist.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 16 / 9,
          mainAxisExtent: 3,
          crossAxisSpacing: 4),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = tilelist[index];
        return   Container( 
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column( 
                 children: [

                  Image.asset(item.imageurl, fit: BoxFit.contain,)
                 ],
              ),
            );
      },
    );
  }
}
