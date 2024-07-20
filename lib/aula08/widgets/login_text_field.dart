import 'package:aula7/aula08/classes/login_details.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField(
      {super.key, required this.tipoLogin, required controller})
      : _controller = controller;

  final TextEditingController _controller;
  final TiposDeLogin tipoLogin;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  var loginDatails = LoginDetails.loginDetails();
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: widget._controller,
        decoration: InputDecoration(
          label: Text(loginDatails[widget.tipoLogin]!.label),
          border: OutlineInputBorder(),
          hintText: loginDatails[widget.tipoLogin]!.hintText,
          prefixIcon: loginDatails[widget.tipoLogin]!.prefixIcon,
        ));
  }
}
