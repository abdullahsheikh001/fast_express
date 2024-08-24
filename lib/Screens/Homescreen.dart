import 'package:carousel_slider/carousel_slider.dart';
import 'package:fast_express/Data/Data.dart';
import 'package:fast_express/Screens/DetailsScreen.dart';
 import 'package:fast_express/Screens/premiumgrid.dart';
import 'package:fast_express/Widgets/Drawer.dart';
import 'package:fast_express/Widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:fast_express/Widgets/Sushiscroll.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationController _mainscreencontroller;

  @override
  void dispose() {
    _animationController.dispose();
    _mainscreencontroller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _mainscreencontroller = AnimationController(
        vsync: this,
        lowerBound: 0,
        upperBound: 1,
        duration: const Duration(seconds: 3));

    _mainscreencontroller.forward();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
      lowerBound: 0,
      upperBound: 1,
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _mainscreencontroller,
      builder: (context, child) {
        return FadeTransition(
          opacity: _mainscreencontroller,
          child: child,
        );
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading:Builder(builder: (context) =>  IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
        drawer: Drawerwidget(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 16),
                    child: Text(
                      "Category of Sushi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 250),
                    child: Text(
                      "100の本格レシピ",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Sushiscroll(),
                  const SizedBox(height: 30),
                  AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return ScaleTransition(
                        scale: Tween<double>(begin: 0.9, end: 1.0).animate(
                          CurvedAnimation(
                            parent: _animationController,
                            curve: Curves.bounceOut,
                          ),
                        ),
                        child: child,
                      );
                    },
                    child: CarouselSlider.builder(
                      itemCount: listdata.length,
                      options: CarouselOptions(
                        height: 480,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.easeInOut,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 700),
                        viewportFraction: 0.9,
                      ),
                      itemBuilder: (context, index, realIndex) {
                        final item = listdata[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailScreen(
                                      model: detailtilelist[index]);
                                },
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                child: Card(
                                  color: Colors.grey.withOpacity(0.1),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(100),
                                      topLeft: Radius.circular(100),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    ),
                                  ),
                                  margin: const EdgeInsets.only(top: 70),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 80),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 105, top: 30),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              SizedBox(width: 5),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              SizedBox(width: 5),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              SizedBox(width: 5),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              SizedBox(width: 5),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          item.title,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "\$${item.price}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 21,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            item.description,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -5,
                                left: 50,
                                right: 50,
                                child: Hero(
                                  tag: item.imageurl,
                                  child: Image.asset(
                                    item.imageurl,
                                    height: 200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Premium Menu",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Premiumgrid(),
                                ));
                          },
                          child: const Text(
                            "see all",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 30),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 3 / 4,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final item = tilelist[index];
                    return InkWell(
                      onTap: () {},
                      child: Container(
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
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: tilelist.length,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: const Curvednavigation(),
      ),
    );
  }
}
