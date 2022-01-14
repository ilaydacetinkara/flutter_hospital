import 'package:flutter/material.dart';
import 'package:flutter_hospital/constant.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  // final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    // required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    
        style: ElevatedButton.styleFrom(
                                  primary: kPrimaryColor,

          shape: StadiumBorder(),
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text(text),
        onPressed: () {},
        // onPressed: onClicked,
      );
}
