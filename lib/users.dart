import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Users();
  }
}

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {

  static const userNames = [
    'Саги Кани',
    'Ағабек Жақсылық',
    'Шалабаев Қазыбек',
    'Куатбаев Айбек',
    'Саги Кани',
    'Советбекова Асем',
    'Төреназар Мейірхан',
    'Ыбытаева Жулдыз',
    'Советбекова Асем',
    'Төреназар Мейірхан',
  ];

  static const underLabels = [
    'Дизайнер в InHouse',
    'Дизайнер в InHouse',
    'Back-end в InHouse',
    'CEO в Bugin Holding',
    'Дизайнер в InHouse',
    'Дизайнер в InHouse',
    'Дизайнер в InHouse',
    'Дизайнер в InHouse',
    'Дизайнер в InHouse',
    'Дизайнер в InHouse',
  ];

  static const avatars = [
    'images/avatars/ava.png',
    'images/avatars/ava1.png',
    'images/avatars/ava2.png',
    'images/avatars/ava3.png',
    'images/avatars/ava4.png',
    'images/avatars/ava5.png',
    'images/avatars/ava6.png',
    'images/avatars/ava7.png',
    'images/avatars/ava8.png',
    'images/avatars/ava9.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70.0,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(child: Icon(Icons.chevron_left), height: 13.33,),
                          Text('Пользователи', style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 16.0
                          ),),
                          OutlinedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'UsersMenu');
                              },
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size.zero, // Set this
                                padding: EdgeInsets.zero, // and this
                              ),
                              child: SvgPicture.asset('images/settings.svg', height: 14.67,)),
                        ],
                      ),
                      Hero(
                        tag: 'upper_menu',
                        child: Container(),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 700.0,
                  child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color: Color(0xffe5e5e5),
                      ),
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          height: 70.0,
                          child: ListTile(
                            leading: Image.asset(avatars[index], height: 50.0,),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(userNames[index]),
                                Text(underLabels[index], style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color.fromRGBO(129, 146, 153, 1)
                                ),)
                              ],
                            ),
                            trailing: SvgPicture.asset('images/info.svg'),
                          ),
                        );
                      },
                      itemCount: userNames.length,
                  ),
                )]
          ),
        ),
      ),
    ));
  }
}

