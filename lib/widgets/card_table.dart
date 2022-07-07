import 'package:flutter/material.dart';

import 'dart:ui';

class CardTable extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard( color: Colors.lightBlue.shade300, icon: Icons.border_all, text: 'General',),
            _SingleCard( color: Colors.purple.shade400, icon: Icons.directions_bus_filled, text: 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard( color: Colors.pinkAccent.shade700, icon: Icons.shop, text: 'Shopping'),
            _SingleCard( color: Colors.orange.shade300, icon: Icons.cloud, text: 'Bills'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard( color: Colors.cyan.shade500, icon: Icons.movie_creation_rounded, text: 'Entertainment'),
            _SingleCard( color: Colors.green.shade300, icon: Icons.local_grocery_store_rounded, text: 'Grocery'),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;


  const _SingleCard({Key? key, 
  required this.icon, 
  required this.color, 
  required this.text}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
      return _CardBackground(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(icon, size: 35,color: Colors.white),
                  radius: 30,
                ),
                const SizedBox(height: 10),
                Text(text, style: TextStyle(color: color, fontSize: 18),)
        
              ],
            )
      );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    Key? key, 
    required this.child
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5 , sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
