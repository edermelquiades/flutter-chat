import 'package:chat/src/widgets/buttom_blue.dart';
import 'package:chat/src/widgets/custom_imput.dart';
import 'package:chat/src/widgets/label_imput.dart';
import 'package:chat/src/widgets/logo_imput.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F3F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LogoImput(
                    image: 'assets/tag-logo.png',
                    text: 'Messenger',
                  ),
                  _Form(),
                  LablelImput(
                    nameText1: ' No tienes cuenta?',
                    nameText2: 'Crea una ahora! ',
                    colorText1: Colors.black54,
                    colorText2: Colors.blue[600],
                    ruta: 'register',
                  ),
                  Text(
                    'Términos y condiciones',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCrtl = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomImput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCrtl,
          ),
          CustomImput(
            icon: Icons.lock_outline,
            placeholder: 'Password',
            textController: passController,
            isPassword: true,
          ),
          ButtomBlue(
            text: 'Ingrese',
            onpress: () {
              print(emailCrtl.text);
            },
          )
        ],
      ),
    );
  }
}
