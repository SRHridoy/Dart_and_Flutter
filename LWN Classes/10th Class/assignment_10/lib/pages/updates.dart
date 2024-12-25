import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                color: Colors.black,
                child: Text(
                  'Keep Updating YourSelf!',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 200,
                      height: MediaQuery.sizeOf(context).height,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: MediaQuery.sizeOf(context).height,
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: MediaQuery.sizeOf(context).height,
                      color: Colors.redAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: MediaQuery.sizeOf(context).height,
                      color: Colors.orange,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
