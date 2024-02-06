import 'package:flutter/material.dart';
import 'package:qadam_education/constants/app_color.dart';
import 'package:qadam_education/routing/app_roures.dart';

import 'widgets/build_input_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
    final mediaSize = MediaQuery.sizeOf(context);

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
    final mediaSize = MediaQuery.sizeOf(context);

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
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.home);
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: AppColor.mainColor,
        backgroundColor: AppColor.mainColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Text(
        'Log In',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
