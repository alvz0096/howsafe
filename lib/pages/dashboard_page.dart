import 'package:flutter/material.dart';
import 'package:howsafe/utils/dimensions.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height10 + 10,
                bottom: Dimensions.height10 + 10,
              ),
              margin: EdgeInsets.only(
                top: Dimensions.height20 + 5,
              ),
              width: double.infinity,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: Dimensions.width30,
                    height: Dimensions.width30,
                    image: AssetImage("assets/images/launcher_icon.png"),
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  Text(
                    "How",
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                      fontSize: Dimensions.fontH26,
                    ),
                  ),
                  Text(
                    "Safe",
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                      fontSize: Dimensions.fontH26,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.listViewContentSize,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
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
