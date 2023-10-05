import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Profile();
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                  Center(
                    child: SvgPicture.asset('images/upl_photo.svg', height: 90.0,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: 'Фамлия'),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Имя'),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Отчество'),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Электронная почта'),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Пол'),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          onChanged: (value){},
                          decoration: InputDecoration(labelText: 'Дата рождения', suffixIcon: SizedBox(height: 14.67, child: SvgPicture.asset('images/date_birth.svg', height: 14.67, width: 14.67,))),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Телфефон'),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Должность'),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Компания'),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Instagram'),
                        ),
                        SizedBox(height: 10.0,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Telegram'),
                        ),
                        SizedBox(height: 10.0,),
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
                            Navigator.pushNamed(context, 'Passback');
                          },
                          child: Text(
                            'Сменить пароль',
                            style: TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                        ),
                        SizedBox(height: 30.0,)
                      ],
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
}
