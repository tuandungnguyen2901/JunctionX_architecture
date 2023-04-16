
import 'package:blood_donation_app/option_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void _navigateToScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Options()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giọt Hồng'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to Giọt Hồng',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Image.asset(
              'asset/blood.png',
              width: 300,
              height: 300,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _navigateToScreen(context);
                  },
                  child: const Text('Bắt đầu'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
