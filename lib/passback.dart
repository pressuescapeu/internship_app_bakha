import 'package:flutter/material.dart';

class PassbackPage extends StatelessWidget {
  const PassbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Passback();
  }
}

class Passback extends StatefulWidget {
  const Passback({Key? key}) : super(key: key);

  @override
  State<Passback> createState() => _PassbackState();
}

class _PassbackState extends State<Passback> {

  static bool isHiddenPassword1 = true;
  static bool isHiddenPassword2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Профиль', style: TextStyle(fontWeight: FontWeight.bold),),
                    leading: Icon(Icons.chevron_left),
                    onTap: (){
                      Navigator.pushNamed(context, 'Home');
                    },
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          obscureText: isHiddenPassword1,
                          onChanged: (String value){},
                          decoration: InputDecoration(
                              hintText: 'Введите новый пароль',
                              suffixIcon: InkWell(
                                  child: (isHiddenPassword1)
                                      ?Icon(Icons.visibility,)
                                      :Icon(Icons.visibility_off)
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          obscureText: isHiddenPassword2,
                          onChanged: (String value){},
                          decoration: InputDecoration(
                              hintText: 'Повторите пароль',
                              suffixIcon: InkWell(
                                  child: (isHiddenPassword2)
                                      ?Icon(Icons.visibility,)
                                      :Icon(Icons.visibility_off)
                              )
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFFCC0016), fixedSize: Size(MediaQuery.of(context).size.width, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)
                              )
                          ),
                          onPressed: () {},
                          child: Text(
                            'Подтвердить',
                            style: TextStyle(color: Colors.white,fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
