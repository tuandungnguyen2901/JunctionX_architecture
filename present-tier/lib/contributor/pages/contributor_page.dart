import 'package:blood_donation_app/contributor/pages/QR.dart';
import 'package:blood_donation_app/contributor/pages/blood_history.dart';
import 'package:blood_donation_app/contributor/pages/blood_register_donation.dart';
import 'package:blood_donation_app/contributor/pages/campaign.dart';
import 'package:blood_donation_app/contributor/pages/emergency.dart';
import 'package:blood_donation_app/contributor/pages/profile.dart';
import 'package:flutter/material.dart';

class ContributorPage extends StatefulWidget {
  const ContributorPage({super.key});

  @override
  State<ContributorPage> createState() => _ContributorPageState();
}

class _ContributorPageState extends State<ContributorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contributor'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileU()));
                },
                child: const Text('Hồ Sơ')),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const QR()));
                },
                child: const Text('QR')),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Emergency()));
                },
                child: const Text('Khẩn cấp')),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MapScreen()));
                },
                child: const Text('Chiến dịch hiến máu')),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          BloodRegister(title: 'Date Picker')));
                },
                child: const Text('Đăng ký hiến máu')),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BloodHistory()));
                },
                child: const Text('Lịch sử hiến máu')),
          ],
        ),
      ),
    );
  }
}
