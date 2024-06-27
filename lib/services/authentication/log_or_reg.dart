import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/home_page.dart';
import 'package:food_delivery/Screens/login_page.dart';
import 'package:food_delivery/Screens/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;
  void toggle_pages()
  {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  void login()
  {
    /* authentication*/
    Navigator.push(
        context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) return LoginPage(onTap: toggle_pages);
    else return RegisterPage(onTap: toggle_pages);
  }
}
