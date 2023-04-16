import 'package:flutter/material.dart';

class ProfileU extends StatefulWidget {
  const ProfileU({super.key});

  @override
  State<ProfileU> createState() => _ProfileUState();
}

class _ProfileUState extends State<ProfileU> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'asset/blood-donation.png',
              width: 200,
              height: 100,
            ),
            Center(
              child: Column(
                children: const [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Thong tin nguoi dung: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Ho va ten: ABC'),
                  Text('Dia chi: ABC'),
                  Text('Quan/ Huyen: ABC'),
                  Text('Tinh: ABC'),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Thong tin suc khoe: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Can nang: ABC'),
                  Text('Chieu cao: ABC'),
                  Text('Nhip tim: ABC'),
                  Text('Huyet ap: ABC'),
                ],
              ),
            ),
          ],
        )));
  }
}
