import 'package:dashboard/util/form.dart';
import 'package:flutter/material.dart';

class RegistrarMovimento extends StatefulWidget {
  const RegistrarMovimento({super.key});
  static const String route = '/registrar_movimento';
  @override
  State<RegistrarMovimento> createState() => _RegistrarMovimentoState();
}

class _RegistrarMovimentoState extends State<RegistrarMovimento> {
  bool isClient = false;
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _placaCarro = TextEditingController();
  final TextEditingController _corCarro = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final FocusScopeNode node = FocusScope.of(context);
    return SimpleDialog(
      title: const Text('Registrar Movimentação'),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text('Entrada de mensalista: '),
              Switch(
                value: isClient,
                onChanged: (bool value) {
                  setState(() {
                    isClient = value;
                  });
                },
                activeColor: isClient ? Colors.red : Colors.grey,
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isClient)
                ControleEstacionamentoForm.buildTextFormField(
                  textEditingController: _cpfController,
                  label: 'CPF do cliente',
                  action: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  focus: node.nextFocus,
                ),
              ControleEstacionamentoForm.buildTextFormField(
                label: 'Placa do carro',
                textEditingController: _placaCarro,
                action: TextInputAction.done,
                focus: node.unfocus,
              ),
              ControleEstacionamentoForm.buildTextFormField(
                label: 'Cor do carro',
                textEditingController: _corCarro,
                action: TextInputAction.done,
                focus: node.unfocus,
              ),
            ],
          ),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancelar',
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Enviar',
              ),
            ),
          ],
        )
      ],
    );
  }
}
