import 'package:flutter/material.dart';

class ClassWorkStackView extends StatelessWidget {
  const ClassWorkStackView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Work Stack View'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: width * 1,
                  // height: height * 1,
                  color: Colors.black,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
                ),
                Positioned(
                  top: 1,
                  right: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  bottom: 1,
                  left: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up),
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 1,
                  left: 50,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Student Name'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Batch'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
