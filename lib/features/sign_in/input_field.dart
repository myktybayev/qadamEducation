import 'package:flutter/material.dart';

class BuildInputField extends StatefulWidget {
  final TextEditingController controller;
  final bool isPassword;

  BuildInputField({required this.controller, this.isPassword = false});

  @override
  _BuildInputFieldState createState() => _BuildInputFieldState();
}

class _BuildInputFieldState extends State<BuildInputField> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = !widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        labelText: widget.isPassword ? 'Password' : 'Email',
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              )
            : null,
      ),
    );
  }
}
