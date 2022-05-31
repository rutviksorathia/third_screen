import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String amount = '';

  @override
  void initState() {
    Intl.defaultLocale = 'EN_US';
    super.initState();
  }

  void handleDigitTap({required int tapDigit}) {
    if (tapDigit == 11) {
      if (amount.isEmpty) return;

      setState(() {
        amount = amount.substring(0, amount.length - 1);
      });
    } else if (tapDigit == 10) {
      if (amount.contains('.') || amount.length >= 5) return;

      setState(() {
        amount += '.';
      });
    } else {
      if (amount.contains('.') && amount.length >= 6) {
        return;
      } else if (!amount.contains('.') && amount.length >= 5) {
        return;
      }

      setState(() {
        amount += tapDigit.toString();
      });
    }
  }
  //  void handleDigitTap({required int digit}) {
  //   if (digit == 11) {
  //     if (amount.isEmpty) return;

  //     amount = amount.substring(0, amount.length - 1);
  //   } else if (digit == 10) {
  //     if (amount.contains('.') || amount.length >= 5) return;

  //     amount += '.';
  //   } else {
  //     if (amount.contains('.') && amount.length >= 6) {
  //       return;
  //     } else if (!amount.contains('.') && amount.length >= 5) {
  //       return;
  //     }

  //     amount += digit.toString();
  //   }

  //   setState(() {});
  // }

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
                      amount.isNotEmpty
                          ? NumberFormat().format(double.parse(amount))
                          : '',
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
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Numpad(
                    digit: 1,
                    onTap: handleDigitTap,
                  ),
                  Numpad(
                    digit: 2,
                    onTap: handleDigitTap,
                  ),
                  Numpad(
                    digit: 3,
                    onTap: handleDigitTap,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Numpad(
                    digit: 4,
                    onTap: handleDigitTap,
                  ),
                  Numpad(
                    digit: 5,
                    onTap: handleDigitTap,
                  ),
                  Numpad(
                    digit: 6,
                    onTap: handleDigitTap,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Numpad(
                    digit: 7,
                    onTap: handleDigitTap,
                  ),
                  Numpad(
                    digit: 8,
                    onTap: handleDigitTap,
                  ),
                  Numpad(
                    digit: 9,
                    onTap: handleDigitTap,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Numpad(
                    digit: 10,
                    onTap: handleDigitTap,
                  ),
                  Numpad(
                    digit: 0,
                    onTap: handleDigitTap,
                  ),
                  Numpad(
                    digit: 11,
                    onTap: handleDigitTap,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Numpad extends StatelessWidget {
  final int digit;
  final void Function({required int tapDigit}) onTap;
  Numpad({required this.digit, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Widget shownDigitWidget = Text(
      (digit == 10) ? '.' : digit.toString(),
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    );

    if (digit == 11) {
      shownDigitWidget = Icon(BootstrapIcons.backspace);
    }

    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: InkWell(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: shownDigitWidget,
          ),
        ),
        onTap: () => onTap(tapDigit: digit),
      ),
    );
  }
}
