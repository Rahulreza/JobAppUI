import 'package:day24/model/company_info.dart';
import 'package:day24/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CompanyInfoDetailsPage extends StatefulWidget {
  @override
  State<CompanyInfoDetailsPage> createState() => _CompanyInfoDetailsPageState();
}

class _CompanyInfoDetailsPageState extends State<CompanyInfoDetailsPage> {
  final cinfo =CompanyInfo.generatedCompanyInfoList();

  // CompanyInfoDetailsPage(this.companyInfo);


  final _companyInfoList = CompanyInfo.generatedCompanyInfoList();

  @override
  Widget build(BuildContext context) {
    var index=1;
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 40,
            ),
            child: Divider(
              thickness: 5,
              indent: 140,
              endIndent: 140,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: Image.asset(
                      cinfo[index].logo,
                      height: 10,
                    ),
                  ),
                  title: Text(
                    "${cinfo[index].company}",
                    style: myStyle(18, Colors.black, FontWeight.bold),
                  ),
                  trailing: Icon(Icons.bookmark_add_outlined),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 20, bottom: 5),
                  child: Text(
                    cinfo[index].title,
                    style: myStyle(16, Colors.black, FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.location_on_outlined,
                    color: Colors.amber,
                  ),
                  title: Text(
                    "${cinfo[index].location}",
                    style: myStyle(
                      14,
                      Colors.black54,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: cinfo[index].requirement.length,
                      itemBuilder: (BuildContext context, int index) {
                        return   ListTile(
                          leading: Icon(Icons.do_not_disturb_on_total_silence_rounded),
                          title: Text(
                            "${cinfo[index].requirement[index]}",
                            style: myStyle(
                              14,
                              Colors.black54,
                            ),
                          ),
                        );
                      }
                      ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
