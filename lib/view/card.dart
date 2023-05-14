import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  Widget displayCard({required String title}) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        color: Colors.amber,
        child: Center(
          child: Text(
            "$title ",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
        elevation: 0,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return displayCard(title: ' I am inside');
        },
      )),
      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         for (int i = 0; i < 10; i++) ...{
      //           GestureDetector(
      //             onTap: () {
      //               showMessage(context, 'hello', color: Colors.black);
      //             },
      //             child: displayCard(title: 'I am card $i'),
      //           )
      //         },
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
