// ignore_for_file: unused_import, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cardslidder/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCard(),
    );
  }
}

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

List<Map<String, dynamic>> data = [
  {
    'card_no': '********43434',
    'amount': '\$3,000',
    'bgcolor': Colors.green,
    'icon': Icons.circle_rounded,
  },
  {
    'card_no': '********515151',
    'amount': '\$6,000',
    'bgcolor': Colors.red,
    'icon': Icons.circle_rounded,
  },
  {
    'card_no': '*********434343',
    'amount': '\$7,000',
    'bgcolor': Colors.yellow,
    'icon': Icons.circle_rounded,
  },
  {
    'card_no': '********61321',
    'amount': '\$5,000',
    'bgcolor': Colors.black,
    'icon': Icons.circle_rounded,
  },
];

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carousel Slider"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const Text(
                    'Cards',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  CarouselSlider(
                    items: data.map((e) {
                      return ItemCard(
                        cardNo: e['card_no'],
                        amount: e['amount'],
                        color: e['bgcolor'],
                        icon: e['icon'],
                      );
                    }).toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 0.4,
                      height: 300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Activity",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  OutlinedButton(onPressed: null, child: Text("History")),
                ],
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20, left: 100),
                    child: Column(
                      children: const [
                        Text(
                          "06,June\n",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  cards(
                    title: 'Mcdonalds',
                    price: 60,
                    icon: Icons.food_bank,
                  ),
                  cards(
                    title: 'pizza',
                    price: 60,
                    icon: Icons.face_retouching_natural,
                  ),
                  cards(
                    title: 'Mcdonalds',
                    price: 60,
                    icon: Icons.food_bank,
                  ),
                  cards(
                    title: 'Mcdonalds',
                    price: 60,
                    icon: Icons.food_bank,
                  ),
                  cards(
                    title: 'Mcdonalds',
                    price: 60,
                    icon: Icons.food_bank,
                  ),
                  cards(
                    title: 'Mcdonalds',
                    price: 60,
                    icon: Icons.food_bank,
                  ),
                  cards(
                    title: 'Mcdonalds',
                    price: 60,
                    icon: Icons.food_bank,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key,
      required this.cardNo,
      required this.amount,
      required this.color,
      required this.icon})
      : super(key: key);
  final cardNo;
  final amount;
  final color;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: 300,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black87),
          Text(cardNo),
          Text(amount),
        ],
      ),
    );
  }
}

class cards extends StatefulWidget {
  String title;
  double price;
  IconData icon;
  cards(
      {Key? key, required this.title, required this.price, required this.icon})
      : super(key: key);

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                widget.icon,
                color: Colors.black38,
              ),
              Text(widget.title),
            ],
          ),
          Text('\$${widget.price}'),
        ],
      ),
    );
  }
}
