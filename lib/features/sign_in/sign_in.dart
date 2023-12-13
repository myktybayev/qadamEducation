import 'package:flutter/material.dart';
import 'package:qadam_education/constants/app_color.dart';

import 'input_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Positioned(top: 150, child: _buildTop()),
          Positioned(bottom: 100, child: _buildBottom()),
        ],
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Center(
        child: Text(
          'Кіру',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: AppColor.mainColor,
          ),
        ),
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTop(),
            const SizedBox(height: 150),
            BuildInputField(controller: emailController),
            BuildInputField(controller: passwordController, isPassword: true),
            const SizedBox(height: 20),
            _buildRequestPassword(),
            const SizedBox(height: 20),
            _buildLoginButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildRequestPassword() {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Пароль ұмыттым, админнен сұрату',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: AppColor.mainColor,
        backgroundColor: AppColor.mainColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: Text(
        'Log In',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
