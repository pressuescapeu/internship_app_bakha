import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LoginForm();
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final pwdController = TextEditingController();
  final emailController = TextEditingController();
  static String telNumber = '';
  static String error = '';
  static bool isHiddenPassword1 = true;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    pwdController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Center(child: Image.asset('images/bugin_holding.png')),
                    height: 50.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: emailController,
                    onChanged: (String value){
                      telNumber = value;
                    },
                    decoration: InputDecoration(hintText: 'Номер телефона'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: pwdController,
                    obscureText: isHiddenPassword1,
                    onChanged: (String value){},
                    decoration: InputDecoration(
                        hintText: 'Пароль',
                        suffixIcon: InkWell(
                            onTap: _togglePasswordView1,
                            child: (isHiddenPassword1)
                                ?Icon(Icons.visibility,)
                                :Icon(Icons.visibility_off)
                        )
                    ),
                  ),
                  Container(
                    height: 40.0,
                    child: Text(
                      error,
                      style: TextStyle(color: Color(0xFFCC0016)),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFCC0016), fixedSize: Size(MediaQuery.of(context).size.width, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)
                      )
                    ),
                    onPressed: () {
                      if (pwdController.text == 'qwerty123' && emailController.text == '+77'){
                        Navigator.pushNamed(context, 'Home');
                      }
                      else if (pwdController.text != 'qwerty123'){
                        error = 'Неправильный пароль';
                      }
                      else if (emailController.text == ""){
                        error = 'Введите номер телефона';
                      }
                    },
                    child: Text(
                      'Войти',
                      style: TextStyle(color: Colors.white,fontSize: 20.0),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(255, 255, 255, 1), fixedSize: Size(MediaQuery.of(context).size.width, 60),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(18.0),
                        )
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'preRegistration');
                    },
                    child: Text(
                      'Создать аккаунт',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(245, 245, 245, 1), fixedSize: Size(MediaQuery.of(context).size.width, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)
                        )
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'Home');
                    },
                    child: Text(
                      'Восстановить пароль',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _togglePasswordView1(){
    isHiddenPassword1 = !isHiddenPassword1;
    setState(() {});
  }
}
