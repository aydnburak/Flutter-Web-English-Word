import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade800,
      body: Column(
        children: <Widget>[
          CustomAppBar(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Function? press;

  const MenuItem({
    Key? key,
    required this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: Colors.black.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/icon.jpeg",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "English Word".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "Kelime Ekle",
            press: () {},
          ),
          MenuItem(
            title: "Test",
            press: () {},
          ),
          DefaultButton(
            text: "Get Started",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String text;
  final Function? press;

  const DefaultButton({
    Key? key,
    required this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow.shade900),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          ),
        ),
        onPressed: () => press,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
