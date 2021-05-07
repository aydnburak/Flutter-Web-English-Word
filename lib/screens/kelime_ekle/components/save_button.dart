import 'package:english_word/viewmodel/user_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SaveButton extends StatelessWidget {
  final VoidCallback press;

  const SaveButton({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userModel = Provider.of<UserModel>(context);
    return Padding(
      padding: EdgeInsets.all(50),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: press,
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
