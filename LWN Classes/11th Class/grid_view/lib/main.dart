import 'package:flutter/material.dart';
import 'package:grid_view/grid_view.dart';

void main(){
runApp(const GridViewClass10());
}

class GridViewClass10 extends StatelessWidget {
  const GridViewClass10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewLearn(),
    );
  }
}
