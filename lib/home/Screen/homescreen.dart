import 'dart:ui';

import 'package:extra_practice/utils/globallist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          size: 20,
        ),
        centerTitle: true,
        title: const Text(
          'Shofashion',
          style: TextStyle(color: Colors.blueAccent),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add,
              size: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 175,
                  width: 330,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/banner_nike.jpg'),
                      )),
                )
              ],
            ),
            Wrap(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 10),
                      child: const Text(
                        'Popular Product',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 129, top: 10),
                      child: const Text(
                        'View All',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(
                                10))),
                        child: Center(
                            child: Text(
                              'All',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        height: 35,
                        width: 95,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(
                                10))),
                        child: Center(
                            child: Text(
                              'Branded',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        height: 35,
                        width: 95,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(
                                10))),
                        child: Center(
                            child: Text(
                              'Running',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        height: 35,
                        width: 95,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(
                                10))),
                        child: Center(
                            child: Text(
                              'Sneakers',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Wrap(
              children: [
                ...List.generate(
                  productlist.length,
                      (index) =>GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedindex =index;
                            Navigator.of(context).pushNamed('/detail');
                          });
                        },
                        child: homemethod(img: productlist[index]['img'],
                          name: productlist[index]['name'],
                          price: productlist[index]['price'],),
                      )
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }

  Container homemethod(
      {required String img, required String name, required int price}) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 10),
      height: 275,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            height: 170,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                image: AssetImage(img),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8),
                      child: Icon(
                        Icons.star,
                        color: Colors.blue.shade400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        '(4.5)',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'Men`s Shoes',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  (price).toString(),
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 75),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

int selectedindex = 0;
