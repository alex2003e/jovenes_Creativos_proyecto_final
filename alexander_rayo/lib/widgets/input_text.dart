import 'dart:ffi';

import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final Void Function(String text) onChanged;
  final String Function(String text) validator;

  const InputText(
      {Key key,
      this.label = '',
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.onChanged,
      this.validator,
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
      onChanged: this.onChanged,
      validator: this.validator,
      decoration: InputDecoration(
          labelText: this.label,
          contentPadding: EdgeInsets.symmetric(vertical: 10)),
    );
  }
}
