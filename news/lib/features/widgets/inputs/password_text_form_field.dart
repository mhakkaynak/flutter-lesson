import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _passwordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      obscureText: _passwordObscureText,
      decoration: InputDecoration(
        hintText: 'Parola Giriniz',
        labelText: 'Parola',
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordObscureText = !_passwordObscureText;
            });
          },
          icon: Icon(
              _passwordObscureText ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}
