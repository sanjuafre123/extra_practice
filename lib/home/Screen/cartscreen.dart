import 'package:extra_practice/home/Screen/homescreen.dart';
import 'package:extra_practice/utils/globallist.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  void initState() {
    for (int i = 0; i < cartlist.length; i++) {
      total = (total + cartlist[i]['price']).toInt();
    }
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 100,
        color: Colors.blue.shade700,
        child: Text(
          'Ammount : $total',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 26),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Column(
        children: [
          ...List.generate(cartlist.length, (index) => cartmethod(index))
        ],
      ),
    );
  }

  Column cartmethod(int index) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 155,
          width: 360,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Row(
            children: [
              Container(
                height: 155,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage(cartlist[index]['img']),
                    )),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 10, right: 65),
                        child: Text(
                          cartlist[index]['name'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 115),
                            child: Text(
                              cartlist[index]['price'].toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 35, left: 10),
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (cartlist[index]['qty'] > 1) {
                                cartlist[index]['qty']--;
                                total =
                                    (total - cartlist[index]['price']).toInt();
                              }
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 35),
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Center(
                            child: Text(cartlist[index]['qty'].toString())),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 35),
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              cartlist[index]['qty']++;
                              total =
                                  (total + cartlist[index]['price']).toInt();
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 35, left: 25),
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              cartlist.removeAt(index);
                            });
                          },
                          child: Icon(Icons.delete, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
