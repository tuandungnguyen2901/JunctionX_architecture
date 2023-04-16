
import 'package:blood_donation_app/contributor/pages/sign_up_user.dart';
import 'package:flutter/material.dart';

import 'administrator/pages/sign_up_ad.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
  }

    void _navigateToNextScreenAd(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignUpAdScreen()));
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
        children: [
          const Text(
            'Bạn là ai?',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.red),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _navigateToNextScreen(context);
                },
                child: const Text('Người hiến máu'),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _navigateToNextScreenAd(context);
                },
                child: const Text('Bệnh viện'),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
