import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/dashboard_screen.dart';
import 'package:gerenciador_tarefas/login_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checklist de atividades"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/login.png'),
              ),
              accountName: Text("Mateus Ramos"),
              accountEmail: Text("mateusrpereira@email.com"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sair"),
              onTap: () => onButtonSairClicked(context),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Estudar Flutter"),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Estudar Unity"),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Aprender Dart"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  void onButtonSairClicked(BuildContext context) {
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => LoginScreen(),
    //   ),
    // );
    Navigator.of(context).pushReplacementNamed("/login");
  }
}
