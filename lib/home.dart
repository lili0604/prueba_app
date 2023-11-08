import 'dart:ffi';

import 'package:flutter/material.dart';

class StackHome extends StatefulWidget {
  const StackHome({Key? key}) : super(key: key);

  @override
  _StackHomeState createState() => _StackHomeState();
}

class _StackHomeState extends State<StackHome> {
  static const cardImage = NetworkImage(
      'https://www.rocketmortgage.com/resources-cmsassets/RocketMortgage.com/Article_Images/Large_Images/Types%20Of%20Homes/Stock-Gray-Ranch-Style-Home-AdobeStock_279953994-copy.jpeg');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                elevation: 4.0,
                child: Column(
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          Text('        1499 Galenia Road         '),
                          const SizedBox(width: 8),
                          Icon(Icons.arrow_upward),
                          const SizedBox(width: 8),
                          Icon(Icons.arrow_downward),
                        ],
                      ),
                      leading: Icon(Icons.close),
                    ),

                    
                    Container(
                      height: 200,
                      child: Stack(
                        children: [
                          Ink.image(
                            image: cardImage,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              'by Kelly Smith with Quest Realty',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                    Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(Icons.favorite_outline,
                                color: Colors.black, size: 30),
                          ),
                          Positioned(
                            top: 10,
                            right: 50,
                            child: Icon(Icons.arrow_upward,
                                color: Colors.black, size: 30),
                          ),
                          Positioned(
                            bottom: 35,
                            left: 10,
                            child: Text(
                              '\$599,000',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              '1499 Galenia Rd, Austin, TX',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}