import 'package:flutter/material.dart';

//import 'container.dart';
//import 'text_input.dart';
//import 'slidable_widget.dart';
//import 'list_view.dart';
//import 'gesture_detector.dart';
//import 'animated_icons.dart';
//import 'drag_and_drop_listview.dart';
//import 'tablerow.dart';
//import 'enable_disable_button.dart';
//import 'date_time_picker.dart';
//import 'media_query.dart';
import 'expansion_panel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
