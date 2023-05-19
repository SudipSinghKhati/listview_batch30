import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack View'),
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            color: Colors.yellow,
            child: Image.asset('assets/images/tree.jpg'),
          ),
          // Positioned(
          //   top: 1,
          //   right: 1,
          //   child: Container(
          //     width: width * 0.25,
          //     height: height * 0.25,
          //     color: Colors.amber,
          //   ),
          // ),
          Positioned(
            left: 40,
            bottom: -50,
            child: SizedBox(
              // color: Colors.red,
              width: width * 0.25,
              height: height * 0.25,
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/tree.jpg'),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
