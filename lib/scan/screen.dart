import 'package:flutter/material.dart';
import 'package:login_screen/scan/read_screen.dart';
import 'package:login_screen/scan/scann_screen.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateScreen(),
                      ));
                },
                child: const Text('create qr')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScanScreen(),
                      ));
                },
                child: const Text('scan')),
          ],
        )),
      ),
    );
  }
}
