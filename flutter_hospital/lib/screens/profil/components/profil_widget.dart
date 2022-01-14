import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String image;
  // final bool isEdit;
  // final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.image,
    // this.isEdit = false,
    // required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    return CircleAvatar(
      backgroundColor: Colors.grey[300],
      radius: 50.0,
      backgroundImage: AssetImage("assets/images/account.png"),
    );
  }
//     return ClipOval(
//       child: Material(
//         color: Colors.teal,
//         child: Image(
// image: AssetImage("account.png"),          fit: BoxFit.cover,
//           width: 128,
//           height: 128,
//           // child: InkWell(onTap: onClicked),
//         ),
//       ),
//     );
}

Widget buildEditIcon(Color color) => buildCircle(
      color: Colors.white,
      all: 3,
      child: buildCircle(
        color: color,
        all: 8,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 20,
        ),
      ),
    );

Widget buildCircle({
  required Widget child,
  required double all,
  required Color color,
}) =>
    ClipOval(
      child: Container(
        padding: EdgeInsets.all(all),
        color: color,
        child: child,
      ),
    );
