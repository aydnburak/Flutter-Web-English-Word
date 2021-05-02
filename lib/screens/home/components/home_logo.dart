import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "assets/images/englishbody.jpeg",
      ),
    );
  }
}
