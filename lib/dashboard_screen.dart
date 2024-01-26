import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checklist de atividades"),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
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
            ),
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
}
