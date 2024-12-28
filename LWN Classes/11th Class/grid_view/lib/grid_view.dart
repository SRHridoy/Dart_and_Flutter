import 'package:flutter/material.dart';

class GridViewLearn extends StatefulWidget {
  const GridViewLearn({super.key});

  @override
  State<GridViewLearn> createState() => _GridViewLearnState();
}

class _GridViewLearnState extends State<GridViewLearn> {
  List<String> images = [
    'assets/images/doggy.jpg',
    'assets/images/bananas.jpg',
    'assets/images/apples.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Page',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xffff0000),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1 / 2),
        //itemCount: images.length,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  //For web issue : use : flutter run -d chrome --web-renderer html....
                  // child: Image.asset(
                  //   images[index],
                  //   fit: BoxFit.cover,
                  // )
              child: Image.network('https://images.unsplash.com/photo-1734327177128-ef59b0d9ded8?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8'),
              ),
            ),
          );
        },
      ),
    );
  }
}
