import 'package:dashboard/cadastro_cliente/cadastro_cliente.dart';
import 'package:dashboard/registrar_movimento/registrar_movimento.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {required this.name,
      required this.icon,
      required this.route,
      this.isSelected = false,
      Key? key})
      : super(key: key);
  final String name;
  final IconData icon;
  final String route;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (route == CadastroCliente.route) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => CadastroCliente(),
          );
        }
        if(route == RegistrarMovimento.route){
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const RegistrarMovimento(),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                icon,
                color: isSelected ? Colors.white : Colors.grey,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
