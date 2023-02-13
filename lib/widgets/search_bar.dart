import 'package:day24/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 25),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: 260,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bgimage.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fast Search",
            style: myStyle(20, Colors.white, FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "You can search quickly for\nthe job you want",
            style: myStyle(16, Colors.white54, FontWeight.w500),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            margin: EdgeInsets.only(top: 20),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage(
                    "images/search.png",
                  ),
                  height: 22,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Search",
                    style: myStyle(18, Colors.black38, FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
