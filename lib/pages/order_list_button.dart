import 'dart:ui';
import 'package:express_staff/model/pagedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderListButton extends StatefulWidget {
  const OrderListButton({
    Key key,
  }) : super(key: key);

  @override
  _OrderListButtonState createState() => _OrderListButtonState();
}

class _OrderListButtonState extends State<OrderListButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
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
        child: RawMaterialButton(
          child: Text(
            "បញ្ជីការកម៉្មង់",
            style: TextStyle(color: CupertinoColors.activeBlue),
          ),
          onPressed: () {
            showCupertinoModalPopup(
                builder: (BuildContext context) {
                  return Container(
                    width: size.width,
                    height: size.height * 0.6, //600
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0))),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * 0.02, //20
                        ),
                        Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'បញ្ជីការកម៉្មង់',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CupertinoButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    CupertinoIcons.clear_circled_solid,
                                    color: CupertinoColors.black,
                                    size: 30,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: size.height * 0.25,
                          child: ListView.builder(
                            padding: EdgeInsets.all(0),
                            scrollDirection: Axis.vertical,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Material(
                                  child: ListTile(
                                title: Text(
                                  checkorder[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                subtitle: Text(
                                  "Size : M",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                trailing: Text(
                                  "x1",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ));
                            },
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Container(
                          width: size.width * 0.8, // 800
                          height: size.height * 0.06, //60
                          decoration: BoxDecoration(
                              color: CupertinoColors.lightBackgroundGray,
                              borderRadius: BorderRadius.circular(13.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "សរុប",
                              ),
                              Text(
                                "\$11.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05, //50
                        ),
                        Container(
                          width: 209,
                          height: 60,
                          child: CupertinoButton(
                            color: CupertinoColors.activeBlue,
                            onPressed: () {},
                            child: Text("ទទួល"),
                          ),
                        )
                      ],
                    ),
                  );
                },
                context: context);
          },
        ),
      ),
    );
  }
}
