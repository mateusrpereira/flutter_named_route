import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.symmetric(vertical: 64.0),
          child: Column(
            children: [
              Image.asset(
                'assets/login.png',
                height: 64,
              ),
              const SizedBox(height: 20),
              const Text(
                'Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextFormField(decoration: InputDecoration(labelText: "E-mail")),
              TextFormField(decoration: InputDecoration(labelText: "Senha")),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => onButtonEntrarClicked(context),
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void onButtonEntrarClicked(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => DashboardScreen(),
    ),
  );
}
