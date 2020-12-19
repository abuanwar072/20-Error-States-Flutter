import 'package:flutter/material.dart';

class NoResultFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/14_No Search Results.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.065,
            right: MediaQuery.of(context).size.width * 0.065,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 13),
                    blurRadius: 25,
                    color: Color(0xFF5666C2).withOpacity(0.17),
                  ),
                ],
              ),
              child: TextField(
                style: TextStyle(fontSize: 12),
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "Search...",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
