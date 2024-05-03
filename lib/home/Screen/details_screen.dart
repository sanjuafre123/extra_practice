
import 'package:extra_practice/utils/globallist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Icon(
              Icons.favorite_border,
              size: 28,
              color: Colors.blue,
            ),
          )
        ],
        centerTitle: true,
        title: Text('Men`s Shoes',style: TextStyle(color: Colors.blue),),
      ),
      body: Column(
        children: [
          detailmethod(
            img: productlist[selectedindex]['img'],
            name: productlist[selectedindex]['name'],
            price: productlist[selectedindex]['price'],

          )
        ],
      ),
    );
  }
  Column detailmethod(
      {required String img, required String name, required int price}) {
    return Column(
      children: [
        Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400, width: 1),
          ),
          child: Image.asset(
            productlist[selectedindex]['img'],
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 18),
                  child: Text(
                    'Men`s Shoes',
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 170),
                      child: Icon(
                        Icons.star,
                        color: Color(0xff4a7b9e),
                      ),
                    ),
                    Text(
                      '(4.5)',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Text(
                    productlist[selectedindex]['name'],
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Text(
                  'Rs,${price.toString()}',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Text(
                    'Description :',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: const Text(
                    'Designed by athletes, for athletes—those\nwho know what it takes to win.Nike Air\ncushioningis a lightweight, durable and\nindustry-leading innovation that absorbs.',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 91,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bool Status = false;
                  int index = 0;

                  for(int i=0; i<cartlist.length; i++)
                    {
                      if(cartlist[i]['name']==productlist[selectedindex]['name'])
                        {
                          index = i;
                          Status = true;
                        }
                    }
                  if(Status)
                    {
                      cartlist[index]['qty']++;
                    }
                  else
                    {
                      cartlist.add(productlist[selectedindex]);
                    }
                  Navigator.of(context).pushNamed('/carts');
                });
              },
              child: Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                ),
                child: const Center(
                    child: Text(
                  'Add to Cart',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                )),
              ),
            )
          ],
        )
      ],
    );
  }
}
