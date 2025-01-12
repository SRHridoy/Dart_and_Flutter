import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(UrlLauncherApp());
}

class UrlLauncherApp extends StatelessWidget {
  const UrlLauncherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UrlLauncherUI(),
    );
  }
}

class UrlLauncherUI extends StatelessWidget {
  const UrlLauncherUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Url Launcher',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                _launchUrl(Uri.parse('https://pub.dev'));
              },
              child: Text(
                'Go to pub.dev',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () async {
                launchUrl(Uri.https('github.com/SRHridoy'));
              },
              child: Text(
                'Visit my github!',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.black,
              onPressed: () {
                _launchUrl(Uri.parse(
                    'mailto:sohanurrahmanhridoy007@gmail.com?subject = Appointment letter as a flutter developer'));
              },
              child: Text(
                'Mail me',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: () {
                _launchUrl(Uri.parse('tel:01740483407'));
              },
              child: Text(
                'Call me',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.cyanAccent,
              onPressed: () {
                _launchUrl(Uri.parse('sms:01740483407'));
              },
              child: Text(
                'SMS me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception("Could not launch $url");
    }
  }
}
