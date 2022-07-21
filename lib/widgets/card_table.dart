import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.pie_chart_sharp,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.purple,
            icon: Icons.shopping_bag,
            text: 'Shopping',
          ),
          _SingleCard(
            color: Colors.orange,
            icon: Icons.text_snippet_outlined,
            text: 'Bills',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Color.fromARGB(255, 4, 91, 163),
            icon: Icons.movie,
            text: 'Entertainment',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.apple_rounded,
            text: 'Grocery',
          )
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var column = Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: color,
        child: Icon(
          icon,
          size: 35,
          color: Colors.white,
        ),
        radius: 30,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(text, style: TextStyle(color: color, fontSize: 18))
    ]);
    return _CardBackground(
      widget: column,
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget widget;

  const _CardBackground({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20));
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: widget,
          ),
        ),
      ),
    );
  }
}
