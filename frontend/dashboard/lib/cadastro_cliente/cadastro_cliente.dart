import 'package:dashboard/util/form.dart';
import 'package:flutter/material.dart';

class CadastroCliente extends StatelessWidget {
  CadastroCliente({super.key});
  static const route = '/cadastro_cliente';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _cellPhoneController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String _password = '';
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final FocusScopeNode node = FocusScope.of(context);
    return SimpleDialog(
      title: Text('Cadastro de Cliente'),
      children: [
        ControleEstacionamentoForm.buildTextFormField(
          textEditingController: _nameController,
          label: 'Nome completo',
          action: TextInputAction.next,
          focus: node.nextFocus,
          keyboardType: TextInputType.name,
          inputFormatters: [],
        ),
        ControleEstacionamentoForm.buildTextFormField(
          textEditingController: _dateController,
          label: 'Data de nascimento',
          action: TextInputAction.next,
          keyboardType: TextInputType.number,
          validator: (value) => null,
          focus: node.nextFocus,
        ),
        ControleEstacionamentoForm.buildTextFormField(
          textEditingController: _cellPhoneController,
          label: 'Celular',
          action: TextInputAction.next,
          keyboardType: TextInputType.number,
          focus: node.nextFocus,
        ),
        ControleEstacionamentoForm.buildTextFormField(
          textEditingController: _cpfController,
          label: 'CPF',
          action: TextInputAction.next,
          keyboardType: TextInputType.number,
          focus: node.nextFocus,
        ),
        ControleEstacionamentoForm.buildTextFormField(
          textEditingController: _emailController,
          label: 'Email',
          action: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          validator: (String? email) {
            if (email!.trim().isEmpty) {
              return 'Informe um email!';
            } else if (!email.contains('@')) {
              return 'Informe um email válido!';
            } else {
              return null;
            }
          },
          focus: node.nextFocus,
        ),
        ControleEstacionamentoForm.buildTextFormField(
          textEditingController: _passwordController,
          label: 'Senha',
          action: TextInputAction.next,
          onChanged: (String password) {
            _password = password.trim();
          },
          validator: (String? password) {
            if (password!.trim().isEmpty) {
              return 'Informe uma senha!';
            } else if (password.length < 6) {
              return 'Informe uma senha maior que 6 digitos!';
            } else {
              return null;
            }
          },
          obscureText: true,
          focus: node.nextFocus,
        ),
        ControleEstacionamentoForm.buildTextFormField(
          textEditingController: _confirmPasswordController,
          label: 'Confirmação da senha',
          action: TextInputAction.done,
          obscureText: true,
          validator: (String? password) {
            if (password!.trim().isEmpty) {
              return 'Informe uma senha!';
            } else if (password.length < 6) {
              return 'Informe uma senha maior que 6 digitos!';
            } else if (password.trim() != _password) {
              return 'As senhas não coincidem';
            } else {
              return null;
            }
          },
          focus: node.unfocus,
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
