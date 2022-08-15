import 'package:flutter/material.dart';
import 'package:login_signup/utils/global.colors.dart';
import 'package:login_signup/view/widgets/button.global.dart';
import 'package:login_signup/view/widgets/social.login.dart';
import 'package:login_signup/view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Logo',
                        style: TextStyle(
                          color: GlobalColors.mainColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Text(
                      'Inicia Sesion con tu cuenta',
                      style: TextStyle(
                        color: GlobalColors.mainColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 15),
                    /// Email input
                    TextFormGlobal(
                      controller: emailController, 
                      text: 'Correo', 
                      obscure: false, 
                      textInputType: TextInputType.emailAddress,
                    ),

                    const SizedBox(height: 10), /// dar espacios entre las cajas de texto
                    /// Password input
                    TextFormGlobal(
                      controller: passwordController, 
                      text: 'Contraseña', 
                      textInputType: TextInputType.text, 
                      obscure: true
                      ),
                      const SizedBox(height: 10),
                      const ButtonGlobal(),
                      const SizedBox(height: 25), /// button social 
                      SocialLogin(),
                  ],
                ),
                ),
                ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No tienes cuenta?',
              ),
              InkWell(
                child: Text(
                  '  Crea una aqui',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
