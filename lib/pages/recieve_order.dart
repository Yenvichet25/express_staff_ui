import 'package:express_staff/model/pagedata.dart';
import 'package:express_staff/pages/order_list_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecieveOrder extends StatefulWidget {
  final dynamic scrollController;

  const RecieveOrder({Key key, this.scrollController}) : super(key: key);
  @override
  _RecieveOrderState createState() => _RecieveOrderState();
}

class _RecieveOrderState extends State<RecieveOrder> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        controller: widget.scrollController,
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: size.height * 0.19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 2, color: CupertinoColors.black)
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: CupertinoColors.inactiveGray,
                            borderRadius: BorderRadius.circular(13.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/ahcha222.jpg"))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              numberphones[index],
                              style: TextStyle(
                                  color: CupertinoColors.activeBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "ចម្ងាយ",
                              style: TextStyle(
                                  color: CupertinoColors.inactiveGray),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              distance[index],
                              style:
                                  TextStyle(color: CupertinoColors.activeBlue),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              child: Text(
                                selectedIndex == index
                                    ? "បានទទួល"
                                    : "កំពុងដឹកជញ្ចូន",
                                style: TextStyle(
                                    color: selectedIndex == index
                                        ? CupertinoColors.systemGreen
                                        : CupertinoColors.activeBlue),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              location[index],
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: CupertinoColors.inactiveGray),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    border: Border.all(
                                      width: 1,
                                      color: CupertinoColors.activeBlue,
                                    )),
                                child: OrderListButton()
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
