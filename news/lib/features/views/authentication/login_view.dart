import 'package:flutter/material.dart';
import 'package:news/features/widgets/inputs/password_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giriş Yap'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'E-Mail Giriniz',
                  labelText: 'E-Mail',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              PasswordTextFormField(
                passwordController: _passwordController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
