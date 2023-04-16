import 'package:blood_donation_app/contributor/pages/contributor_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventCreationScreen extends StatelessWidget {
  const EventCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const Center(
        child: SizedBox(
          width: 400,
          child: Card(
            child: EventCreationForm(),
          ),
        ),
      ),
    );
  }
}

class EventCreationForm extends StatefulWidget {
  const EventCreationForm({super.key});

  @override
  State<EventCreationForm> createState() => _EventCreationFormState();
}

class _EventCreationFormState extends State<EventCreationForm> {
  final _nameTextController = TextEditingController();
  final _addressTextController = TextEditingController();
  final _dateTextController = TextEditingController();
  final double _formProgress = 0;
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ContributorPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        LinearProgressIndicator(value: _formProgress),
        Text('New Campaign', style: Theme.of(context).textTheme.headlineMedium),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _nameTextController,
            decoration: const InputDecoration(hintText: 'Name Campaign'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            obscureText: true,
            controller: _addressTextController,
            decoration: const InputDecoration(hintText: 'Address Campaign'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _dateTextController,
            decoration: const InputDecoration(hintText: 'Select Date'),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2101));
                  if (pickedDate != null) {
                    setState(() {
                      _dateTextController.text = DateFormat('dd-MM-yyyy').format(pickedDate);
                    });
                  }
            },
          ),
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? null
                  : Colors.white;
            }),
            backgroundColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? null
                  : Colors.red;
            }),
          ),
          onPressed: () {
            _navigateToNextScreen(context);
          },
          child: const Text('Create'),
        ),
      ]),
    );
  }
}
