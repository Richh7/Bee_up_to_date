import 'package:flutter/material.dart';
import 'text_form_field.dart';

class InsertApiaryForm extends StatefulWidget {
  const InsertApiaryForm({super.key});

  @override
  State<InsertApiaryForm> createState() => _InsertApiaryFormState();
}

class _InsertApiaryFormState extends State<InsertApiaryForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: IconTheme.of(context).size,
            color: IconTheme.of(context).color,
          ),
        ),
        title: Text('Add apiary', style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 30)),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const MyTextFormField(field: 'Name', isRequired: true),
              const MyTextFormField(field: 'Location', isRequired: true),
              const MyTextFormField(
                  field: 'Registration number', isRequired: false),
              const MyTextFormField(field: 'Description', isRequired: false),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("* means required"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // In the real world, you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
