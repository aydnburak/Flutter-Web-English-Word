import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () {
          print("bas");
        },
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.green,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.save, size: 30, color: Colors.green.shade200),
              SizedBox(
                width: 10,
              ),
              Text(
                "Kelimeyi Kaydet",
                style: TextStyle(fontSize: 30, color: Color.fromRGBO(71, 69, 111, 1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
