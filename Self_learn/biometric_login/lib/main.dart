import 'package:biometric_login/auth_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BioMetricApp());
}

class BioMetricApp extends StatelessWidget {
  const BioMetricApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BioMetricUI(),
    );
  }
}

class BioMetricUI extends StatefulWidget {
  const BioMetricUI({super.key});

  @override
  State<BioMetricUI> createState() => _BioMetricUIState();
}

class _BioMetricUIState extends State<BioMetricUI> {
  final AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Biometric Authentication",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: MaterialButton(
            color: Colors.blue,
            child: Text(
              'Authenticate',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              bool isAuthenticated =
                  await authService.authenticateWithBiometrics();
              if (isAuthenticated) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(
                      'Successfull',
                      style: TextStyle(color: Colors.white),
                    )));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    'Failed!',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ));
              }
            },
          ),
        ));
  }
}
