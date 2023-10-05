import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RegistrationForm();
  }
}


class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  static String telNumber = '';
  static String pwd1 = '';
  static String pwd2 = '';
  static String error = '';
  bool isHiddenPassword1 = true;
  bool isHiddenPassword2 = true;
  @override
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Center(child: Image.asset('images/bugin_holding.png')),
                    height: 50.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    onChanged: (String value){
                      telNumber = value;
                    },
                    decoration: InputDecoration(hintText: 'Номер телефона'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    obscureText: isHiddenPassword1,
                    onChanged: (String value){
                      pwd1 = value;
                    },
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
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    obscureText: isHiddenPassword2,
                    onChanged: (String value){
                      pwd2 = value;
                    },
                    decoration: InputDecoration(
                        hintText: 'Введите пароль повторно',
                        suffixIcon: InkWell(
                            onTap: _togglePasswordView2,
                            child: Icon(Icons.visibility,)
                        )
                    ),
                  ),
                  Container(
                    height: 40.0,
                    child: Text(
                      'Неправильный пароль',
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
                      Navigator.pushNamed(context, 'RegistrationPage');
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
  void _togglePasswordView2(){
    isHiddenPassword2 = !isHiddenPassword2;
    setState(() {});
  }
}
