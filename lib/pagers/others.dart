import 'package:demo_app/controllers/counterController.dart';
import 'package:demo_app/helpers/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //body: ResponsiveWidget(largeScreen: , smallScreen: smallScreen, mediumScreen: mediumScreen)
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text('Screen was clicked ${_counterController.counter.value}'),
        //       ElevatedButton(
        //           onPressed: () {
        //             Get.back();
        //           },
        //           child:
        //               Text('open the other screen', style: GoogleFonts.roboto()))
        //     ],
        //   ),
        // ),

        );
  }
}
