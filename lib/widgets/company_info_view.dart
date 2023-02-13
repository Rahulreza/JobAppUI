import 'package:day24/home_page.dart';
import 'package:day24/model/company_info.dart';
import 'package:day24/widgets/company_info_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CompanyInfoView extends StatefulWidget {
  const CompanyInfoView({super.key});

  @override
  State<CompanyInfoView> createState() => _CompanyInfoViewState();
}

class _CompanyInfoViewState extends State<CompanyInfoView> {
  final _companyInfoList = CompanyInfo.generatedCompanyInfoList();

  companyInfoDetails() {
    return showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => CompanyInfoDetailsPage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 20),
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                companyInfoDetails();
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                height: double.infinity,
                width: MediaQuery.of(context).size.width * 0.7,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset.fromDirection(1.0, 3.0),
                        blurRadius: 3,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
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
                          _companyInfoList[index].logo,
                          height: 10,
                        ),
                      ),
                      title: Text(
                        "${_companyInfoList[index].company}",
                        style: myStyle(18, Colors.black, FontWeight.bold),
                      ),
                      trailing: Icon(Icons.bookmark_add_outlined),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 20, bottom: 5),
                      child: Text(
                        _companyInfoList[index].title,
                        style: myStyle(16, Colors.black, FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on_outlined,
                        color: Colors.amber,
                      ),
                      title: Text(
                        "${_companyInfoList[index].location}",
                        style: myStyle(
                          14,
                          Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
          itemCount: _companyInfoList.length),
    );
  }
}
