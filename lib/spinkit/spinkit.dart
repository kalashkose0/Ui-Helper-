import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinKit extends StatefulWidget {
  const SpinKit({super.key});

  @override
  State<SpinKit> createState() => _SpinKitState();
}

class _SpinKitState extends State<SpinKit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "SpinKit",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SpinKitCircle(
              size: 50,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
