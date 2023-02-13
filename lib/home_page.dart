import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:day24/widgets/company_info_view.dart';
import 'package:day24/widgets/header.dart';
import 'package:day24/widgets/search_bar.dart';
import 'package:day24/widgets/tag_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
                flex: 1,
              ),
            ],
          ),
          Column(
            children: [
              HeaderPage(),
              SearchBarPage(),
              TagListPage(),
              CompanyInfoView(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 2,
        height: 70.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.black12,
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {},
        letIndexChange: (index) => true,
      ),
    );
  }
}

myStyle(double fs, Color clr, [FontWeight? fw]) {
  return TextStyle(fontSize: fs, color: clr, fontWeight: fw);
}
