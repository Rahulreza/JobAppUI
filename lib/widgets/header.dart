import 'package:day24/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome home",
                style: myStyle(14, Colors.black54, FontWeight.w500),
              ),
              Text(
                "Annie Bryant",
                style: myStyle(22, Colors.black, FontWeight.w700),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                transform: Matrix4.rotationZ(100),
                child: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 28,
                        color: Colors.black54,
                      ),
                      Positioned(
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ClipOval(
                child: Image.asset(
                  "images/user1.png",
                  height: 45,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
