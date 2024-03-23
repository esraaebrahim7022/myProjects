
import 'package:flutter/material.dart';
import 'package:tuns_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
final List<Color> tunecolors = const [
Colors.yellow,
Colors.orange,
Colors.deepOrange,
 Colors.red,          
Colors.pinkAccent,
Colors.purple,
Colors.deepPurple,
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
      title:const Text('Flutter Tune'),
      backgroundColor: const Color(0xff253238),
        ),
        body: Column(
          children: 
             tunecolors.map((e) =>TuneItem(color:e)).toList(),

        ),
    );
  }
}