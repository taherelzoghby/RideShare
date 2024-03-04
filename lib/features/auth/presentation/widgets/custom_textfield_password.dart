import 'package:flutter/material.dart';

import '../../../../core/widgets/text_form_field.dart';

class CustomTextFieldPassword extends StatefulWidget {
  const CustomTextFieldPassword({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  State<CustomTextFieldPassword> createState() =>
      _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: widget.hint,
      obscureText: visible,
      suffixIcon: IconButton(
        onPressed: () => setState(() => visible = !visible),
        icon: Icon(
          visible ? Icons.visibility : Icons.visibility_off,
        ),
      ),
    );
  }
}
