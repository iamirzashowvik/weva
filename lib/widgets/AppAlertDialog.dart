import 'package:flutter/material.dart';

class AppAlertDialog {
  static void ShowDialog(BuildContext context, String message) {
    showDialog(
        context: context,
        barrierColor: Color.fromARGB(0XFF, 0X00, 0X58, 0X7A).withOpacity(0.7),
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            onWillPop: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
//                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.circle),
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1,
                        right: MediaQuery.of(context).size.width * 0.1),
                    child: Text(
                      message == ""
                          ? "Please grab a coffee while we get things ready..."
                          : message,
                      style: TextStyle(
                          decoration: TextDecoration.none, color: Colors.white),
                      textScaleFactor: 0.3,
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          );
        });
  }
}