import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Assignment 7',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Center(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * .4,
                    width: MediaQuery.sizeOf(context).width * .4,
                    decoration: BoxDecoration(color: Colors.green[800]),
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                    child: Text(
                  'বাংলাদেশ ❤️',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(color: Colors.green[800]),
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(color: Colors.green[800]),
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(color: Colors.green[800]),
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
            )));
  }
}
