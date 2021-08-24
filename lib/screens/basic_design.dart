import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          Image(image: AssetImage('assets/mountain-landscape.jpg')),

          // Título
          TitleSection(),

          // Sección de botón
          ButtonSection(),

          // Descripción
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse aliquet arcu ac interdum molestie. Quisque lacus magna, congue quis mi ut, efficitur bibendum elit. Suspendisse vitae purus at arcu fringilla interdum. Praesent porttitor justo et mollis mattis. In auctor mi sodales augue fringilla mattis. Proin commodo nunc ipsum, rutrum gravida libero varius euismod. Cras cursus ex et tempus porta. Nullam vitae arcu sed erat tristique rhoncus ut id nisi.'),
          )
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(icon: Icons.phone, text: 'CALL'),
          CustomButton(icon: Icons.send, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({ Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        SizedBox(height: 4),
        Text(
          text,
          style: TextStyle(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
