import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60),
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border:
                          Border.all(width: 2.0, color: Colors.grey.shade300),
                    ),
                    child: Icon(
                      BootstrapIcons.chevron_bar_left,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Container(
                        height: 20,
                        width: 130,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 75),
                        child: Text(
                          'Buy Stock',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                      ),
                      Container(
                        height: 20,
                        width: 130,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 100),
                        child: Text(
                          'Preview Buy',
                          style: TextStyle(fontSize: 14, color: Colors.black45),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: ShapeDecoration(
                color: Colors.grey.shade100,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                      cornerRadius: 20, cornerSmoothing: 0.6),
                ),
              ),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.grey.shade100,
                    shape: SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius(
                          cornerRadius: 15, cornerSmoothing: 0.6),
                    ),
                  ),
                  child: Image.network(
                    'https://thumbs.dreamstime.com/b/amazon-logo-editor…-amazon-logo-editorial-illustrative-208329111.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  'AMZN',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Amazon. lnc',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black38,
                      fontSize: 13),
                ),
                trailing: Container(
                  width: 110,
                  // margin: EdgeInsets.only(right: 5),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius(
                          cornerRadius: 13, cornerSmoothing: 0.6),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Open Type',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        BootstrapIcons.chevron_compact_down,
                        color: Colors.black,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 6, left: 90),
                    child: Text(
                      '\$',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                            .withRed(94)
                            .withGreen(164)
                            .withBlue(132),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 0),
                    child: Text(
                      '2,530',
                      style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                            .withRed(94)
                            .withGreen(164)
                            .withBlue(132),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'You only have ',
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 17),
                  ),
                  TextSpan(
                    text: '\$5,000 ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: 'avilable',
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 17),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, left: 30, right: 30),
              decoration: ShapeDecoration(
                color: Colors.black.withRed(94).withGreen(164).withBlue(132),
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                      cornerRadius: 15, cornerSmoothing: 0.6),
                ),
              ),
              child: Center(
                child: Text(
                  'Preview Buy',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(top: 30, left: 55, right: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '3',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(top: 30, left: 55, right: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '4',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '5',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '6',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(top: 30, left: 55, right: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '7',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '8',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(top: 30, left: 55, right: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '*',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(BootstrapIcons.backspace_fill)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
