import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
            Color(0xff5EE8C5),
            Color(0xff30BAD6)
          ])
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2()
            
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background
        Background(),
        
        //MainContent
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox( height: 40),
          const Text('11°', style: textStyle),
          const Text('Miércoles', style: textStyle),
          //TODO: expanded
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 120, color: Colors.white)
          
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () { Navigator.pushNamed(context,  'home_screen');},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Welcome', style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ),
        ),
      ),
      
    );
  }
}