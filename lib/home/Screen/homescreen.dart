import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.grey,
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notification_add,
                size: 27,
              ),
            ),
          ],
          leading: const Icon(
            Icons.menu,
            size: 27,
          ),
          title: const Text(
            'ShoFashion',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 23,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(18),
                  height: 52,
                  width: 324,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal:
                          BorderSide(color: Colors.grey.shade300, width: 1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.search,
                          size: 32,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 3),
                        child: Text(
                          'Search Product',
                          style: TextStyle(
                              color: Colors.grey.shade300, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 324,
              height: 160,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/banner_nike.jpg'),
                  )),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 18),
                      width: 45,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'All',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 18),
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Branded',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 18),
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Running',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 18),
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sneakers',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 18, top: 15),
                      child: const Text(
                        'Popular Product',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 132, top: 15),
                      child: const Text(
                        'View All',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 18, top: 13),
                      height: 260,
                      width: 160,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.shade400, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 150,
                                width: 158,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFB6cdda),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('assets/shoes1.png'),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(top: 10, left: 5),
                                          child: Icon(
                                            Icons.star,
                                            size: 20,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(
                                                top: 8, left: 2),
                                            child: Text(
                                              '(4.5)',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5,top: 10),
                                child: const Text(
                                  'Nike infinity',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5,),
                                child: const Text(
                                  'Men`s Shoes',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5,top: 10),
                                child: const Text(
                                  'Rs.1500',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 50,top: 5),
                                  child: Icon(Icons.favorite_border,color: Colors.grey.shade400,)),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
