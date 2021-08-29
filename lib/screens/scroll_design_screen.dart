import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // boxDecoration para agregar un gradiante de fondo al Scaffold
    //final BoxDecoration boxDecoration = BoxDecoration(
    //gradient: LinearGradient(
    //begin: Alignment.topCenter,
    //end: Alignment.bottomCenter,
    //stops: [0.5, 0.5],
    //colors: [Color(0xff90e9bd), Color(0xff45bad9)],
    //),
    //);

    return Scaffold(
      // Scaffold con las physics scroll de tipo iPhone y con un gradiante de fondo
      //body: Container(
      //decoration: boxDecoration,
      //child: PageView(
      //scrollDirection: Axis.vertical,
      //physics: BouncingScrollPhysics(), // Scroll tipo iPhone
      //children: [
      //Page1(),
      //Page2(),
      //],
      //),
      //),
      //);
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Fondo
        Background(),

        // Contenido principal
        MainContent(),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Color(0xff45bad9),
      alignment: Alignment.topCenter,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 52,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.0),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 80,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff45bad9),
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, 'home_screen'),
          style: ElevatedButton.styleFrom(
            primary: Color(0xff0098FA),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.symmetric(horizontal: 44, vertical: 8),
          ),
          child: Text(
            'Bienvenido',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
