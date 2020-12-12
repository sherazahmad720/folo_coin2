import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:folo_coin/src/View/sign_up_page.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String txt =
        """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua""";
    return Scaffold(
      body: Container(
        width: Get.width,
        color: Colors.pink,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.white,
              height: 150,
              width: 150,
              child: Text("Logo is here"),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Folo",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Coin",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60.0, vertical: 10),
                          child: Text(
                            txt,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(onTap: (){
                  Get.to(SignUp());
                },
                                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    height: 50,
                    width: 150,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.pink,
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
