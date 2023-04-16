import 'package:flutter/material.dart';

class BloodHistory extends StatefulWidget {
  const BloodHistory({Key? key}) : super(key: key);

  @override
  State<BloodHistory> createState() => _BloodHistoryState();
}

class _BloodHistoryState extends State<BloodHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood History"),
      ),
    );
  }
}
