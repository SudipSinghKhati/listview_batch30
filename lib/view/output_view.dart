import 'package:flutter/material.dart';

import '../model/student.dart';

class OutputView extends StatefulWidget {
  const OutputView({super.key});

  @override
  State<OutputView> createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
  List<Student>? lstStudents;
  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Output View'),
          centerTitle: true,
        ),
        body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: lstStudents!.length,
          itemBuilder: (context, index) {
            var fname = lstStudents![index].fname!;
            var lname = lstStudents![index].lname!;
            var address = lstStudents![index].address!;
            return ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                title: Text('$fname  $lname'),
                subtitle: Text(address),
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-photo/nature-wallpaper-beautiful-nature-wallpaper-4k-nature-wallpapers-hd-nature-wallpaper-green-nature_722194-162.jpg?w=2000'),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          lstStudents!.removeAt(index);
                        });
                      },
                      icon: const Icon(Icons.delete),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                ));
          },
        ));
  }
}
