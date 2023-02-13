import 'package:day24/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TagListPage extends StatefulWidget {
  const TagListPage({super.key});

  @override
  State<TagListPage> createState() => _TagListPageState();
}

class _TagListPageState extends State<TagListPage> {
  final _tagList = <String>["All", "⚡ Popular", "⭐ Featured"];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: selected == index
                      ? Colors.grey.withOpacity(0.3)
                      : Colors.white,
                  border: Border.all(
                    color: selected == index
                        ? Colors.white
                        : Colors.grey.withOpacity(0.3),
                  ),
              ),

              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                child: Text(
                  _tagList[index],
                  style: myStyle(16, Colors.black, FontWeight.w600),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
        itemCount: _tagList.length,
      ),
    );
  }
}
