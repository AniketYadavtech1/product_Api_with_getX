import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget   {
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.lightBlue, boxShadow: [
          BoxShadow(
              blurRadius: 0.2, spreadRadius: 0.2, offset: Offset(0.1, 0.1))
        ]),
        height: 80,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu, color: Colors.white),
              ),
              Container(
                  margin: EdgeInsets.only(left: 40),
                  child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Page title ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),
              Container(
                margin: EdgeInsets.only(left: 47),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
