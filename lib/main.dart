import 'package:flutter/material.dart';
import 'package:listview_batch30/view/card.dart';
import 'package:listview_batch30/view/classwork.dart';
import 'package:listview_batch30/view/classworlk_stack.dart';
import 'package:listview_batch30/view/dashboard.dart';
import 'package:listview_batch30/view/grid_view_screen.dart';
import 'package:listview_batch30/view/output_view.dart';
import 'package:listview_batch30/view/stack_view.dart';
import 'package:listview_batch30/view/student_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Details',
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/studentRoute': (context) => const StudentView(),
        '/outputRoute': (context) => const OutputView(),
        '/classworkRoute': (context) => const ClassworkView(),
        '/cardRoute': (context) => const CardView(),
        '/gridRoute': (context) => const GridViewScreen(),
        '/stackRoute': (context) => const StackView(),
        '/classworkstackRoute': (context) => const ClassWorkStackView(),
      },
    ),
  );
}
