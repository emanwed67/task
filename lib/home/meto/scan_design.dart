import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/home/meto/scan_action.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanDesign extends StatefulWidget {
  const ScanDesign({Key? key}) : super(key: key);

  @override
  State<ScanDesign> createState() => _ScanDesignState();
}

class _ScanDesignState extends State<ScanDesign> {
  String qrstr = "No data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const SizedBox(
            height: 32,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xff6C3428),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'set up QR code..',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: Color(0xff6C3428),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'scan the QR code to get all information about Artifacts .',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xffBE8C63),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SvgPicture.asset('assets/scaner image.svg'),
          const SizedBox(
            height: 64,
          ),
          InkWell(
            onTap: () async {
              scanQr();
            },
            child: Container(
              width: 167,
              height: 51,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffBE8C63),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'scan',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
          ),
        ]),
      )),
    );
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
        });
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScanAction(
                value: value,
              ),
            ));
      });
    } catch (e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }
}
