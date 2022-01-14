import 'package:flutter/material.dart';
import 'package:flutter_hospital/constant.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? _value = 'Kardiyoloji';
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: kPrimaryLightColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.0, style: BorderStyle.solid, color: Colors.cyan),
          borderRadius: BorderRadius.all(Radius.circular(29.0)),
        ),
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: DropdownButton<String>(
          dropdownColor: Colors.teal,
          borderRadius: BorderRadius.circular(29.0),
          items: [
            DropdownMenuItem(
              child: Text("Kardiyoloji"),
              value: "Kardiyoloji",
            ),
            DropdownMenuItem(
              child: Text("Nöroloji"),
              value: "Nöroloji",
            )
          ],
          value: _value,
          onChanged: (String? value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
      // color: Colors.teal,
      // margin: EdgeInsets.symmetric(vertical: 10),
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    );
  }
}
