import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class ScanAction extends StatelessWidget {
  const ScanAction({Key? key, required this.value}) : super(key: key);
  final String value;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const SizedBox(
            height: 32,
          ),
          Align (
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
            'scan the qR code of the Artifact',
            textAlign: TextAlign.center,
            style: TextStyle(height: 1.2,
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color(0xff6C3428),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              BarcodeWidget(
                data: value,
                barcode: Barcode.qrCode(),
                color: const Color(0xff6C3428),
                height: 200,
                width: 332,
              ),
              Container(
                height: 2,
                width: 300,
                color: const Color(0xffBE8C63),
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          InkWell(
            onTap: (){
              print(value);
            },
            child: const Text(
              'please wait few second while loading data .',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xffBE8C63),
              ),
            ),
          ),

        ]),
      )),
    );
  }
}
