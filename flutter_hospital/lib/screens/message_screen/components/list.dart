import 'package:flutter/material.dart';

class List extends StatefulWidget {
  // String name;
  // String messageText;
  // String imageUrl;
  // String time;
  // bool isMessageRead;
  // ConversationList({@required this.name,@required this.messageText,@required this.imageUrl,@required this.time,@required this.isMessageRead});
  const List({ Key? key }) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(
                          context,
                          '/messagedetails',
                        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    // backgroundImage: 
                // NetworkImage(widget.imageUrl),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("name",
                            // widget.name, 
                            style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6,),
                          Text("message",
                            // widget.messageText,
                          style: TextStyle(fontSize: 13,color: Colors.grey.shade600, 
                          // fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text("10.0",
              // widget.time,
            style: TextStyle(fontSize: 12,
            // fontWeight: 
            // widget.isMessageRead?
            // FontWeight.bold:FontWeight.normal),
            ),)
          ],
        ),
      ),
    );
  }
}