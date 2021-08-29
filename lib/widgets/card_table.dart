import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.border_all,
            text: 'General',
            color: Colors.blue,
          ),
          _SingleCard(
            icon: Icons.emoji_transportation,
            text: 'Transport',
            color: Colors.deepPurpleAccent,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shopping_bag,
            text: 'Shopping',
            color: Colors.purpleAccent,
          ),
          _SingleCard(
            icon: Icons.cloud,
            text: 'Bills',
            color: Colors.amber,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie,
            text: 'Entertainment',
            color: Colors.blueAccent,
          ),
          _SingleCard(
            icon: Icons.food_bank_outlined,
            text: 'Grocery',
            color: Colors.green,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 32,
              color: Colors.white,
            ),
            radius: 32,
          ),
          SizedBox(height: 16),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class _SingleCardBackground extends StatelessWidget {
  const _SingleCardBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final BoxDecoration boxDecoration = BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20),
    );

    return Container(
      margin: EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            height: 168,
            decoration: boxDecoration,
            child: child,
          ),
        ),
      ),
    );
  }
}
