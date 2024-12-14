import 'package:flutter/material.dart';

class CounterHome extends StatefulWidget {
  const CounterHome({super.key});

  @override
  State<CounterHome> createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome> {
  //variable:
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.access_alarm_sharp,
          color: Colors.white,
          size: 30,
        ),
        title: const Text(
          'তাসবিহ',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        toolbarHeight: 70,
        actions: const [
          Icon(
            Icons.access_alarm_sharp,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        color: Colors.orange.shade50,
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "সুবহানাল্লাহ ৩৩ বার, আলহামদু লিল্লাহ ৩৩ বার, আল্লাহু আকবার ৩৪ বার বলে ১০০ পূর্ণ করবে। (মুসলিম, হাদিস : ৫৯৬; সহিহ আত-তারগিব, হাদিস : ১৫৯৩)",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Center(
            child: Text(
              "পাঠ করা হয়েছে : $counter বার!",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(flex: 2),
        ]),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.deepOrange,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
