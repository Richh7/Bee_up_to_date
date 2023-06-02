import 'package:flutter/material.dart';


class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key, required this.field, required this.isRequired});

  final String field;
  final bool isRequired;

  buildFieldLabel(isRequired, text) {
    if (isRequired) {
      return text + '*';
    } else {
      return text;
    }
  }

  validate(value, isRequired, text) {
    if (isRequired) {
      if (value == null || value.isEmpty) {
        return 'Please enter apiary $text';
      }
      return null;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: buildFieldLabel(isRequired, field),
      ),
      style: Theme.of(context).textTheme.bodyText1,
      validator: (value) {
        var lowerCaseText = field[0].toLowerCase() + field.substring(1);
        return validate(value, isRequired, lowerCaseText);
      },
    );
  }
}
