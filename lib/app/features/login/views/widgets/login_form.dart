import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'E-mail',
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            cursorColor: Colors.black,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Senha',
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 56,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('ACESSAR'),
            ),
          ),
        ],
      ),
    );
  }
}
