import 'package:dashboard/cadastro_cliente/cadastro_cliente.dart';
import 'package:dashboard/home_page/drawer_item.dart';
import 'package:dashboard/registrar_movimento/registrar_movimento.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String route = '/home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DrawerItem> drawerList = [
    const DrawerItem(
      name: 'Dashboard',
      icon: Icons.dashboard,
      isSelected: true,
      route: '',
    ),
    const DrawerItem(
      name: 'Clientes',
      icon: Icons.people,
      route: '',
    ),
    const DrawerItem(
      name: 'Registrar entrada',
      icon: Icons.airplane_ticket,
      route: RegistrarMovimento.route,
    ),
    const DrawerItem(
      name: 'Registrar saída',
      icon: Icons.exit_to_app,
      route: '',
    ),
    const DrawerItem(
      name: 'Cadastrar cliente',
      icon: Icons.person_add,
      route: CadastroCliente.route,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          centerTitle: true,
        ),
        body: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: 240,
              color: Colors.black,
              child: ListView.builder(
                itemCount: drawerList.length,
                itemBuilder: (context, index) => drawerList[index],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 400,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(24),
              child: ListView(
                children: const [
                  Text(
                    'Overview',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Entradas no mês',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '1.200',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Clientes',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '100',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Clientes ativos',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '60',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
