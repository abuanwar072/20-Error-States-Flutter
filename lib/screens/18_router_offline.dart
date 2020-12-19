import 'package:flutter/material.dart';

class RouterOfflineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/18_Router Offline.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.3,
            right: MediaQuery.of(context).size.width * 0.3,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 13),
                    blurRadius: 25,
                    color: Colors.black.withOpacity(0.17),
                  ),
                ],
              ),
              child: FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {},
                child: Text(
                  "retry".toUpperCase(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
