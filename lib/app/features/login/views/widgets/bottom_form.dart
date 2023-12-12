import 'package:flutter/material.dart';

class BottomForm extends StatelessWidget {
  const BottomForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => {},
          child: const Text('Esqueci minha senha'),
        ),
        Text(
          'OU',
          style: TextStyle(
            color: Colors.grey.shade500,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 10),
        Text.rich(
          TextSpan(
            text: 'Não tem uma conta ? ',
            style: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: 'Cadastre-se agora',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
