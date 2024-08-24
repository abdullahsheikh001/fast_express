import 'package:fast_express/Widgets/detailwidget.dart';
import 'package:fast_express/Widgets/quantiywidget.dart';
import 'package:fast_express/models/Listdatamodel.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.model});

  final Listdatamodel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.grey.withOpacity(0.1)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 5),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.orange,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                model.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 28),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: 30,
                              ))
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 155),
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
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: QuantityWidget(),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  model.description,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 10),
                child: Detailwidget(),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 74,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.orange),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 250),
                      child: Text(
                        "Price",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "\$ ${model.price}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22),
                          ),
                        ),
                        const SizedBox(width: 60,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextButton.icon(
                            style: TextButton.styleFrom(backgroundColor: Colors.black),
                              onPressed: () {},
                              label: const Text(
                                "Add to Cart",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                              icon: const Icon(Icons.add, color: Colors.white,),
                              ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 150,
            left: 20,
            right: -1,
            child: Hero(
              tag: model.imageurl,
              child: Image.asset(
                model.imageurl,
                height: 280,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
