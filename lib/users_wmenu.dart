import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsersMenuPage extends StatelessWidget {
  const UsersMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UsersMenu();
  }
}

class UsersMenu extends StatefulWidget {
  const UsersMenu({Key? key}) : super(key: key);

  @override
  State<UsersMenu> createState() => _UsersMenuState();
}

class _UsersMenuState extends State<UsersMenu> {

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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
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
                            },
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size.zero, // Set this
                              padding: EdgeInsets.zero, // and this
                            ),
                            child: SvgPicture.asset('images/settings.svg', height: 14.67,)),
                      ],
                    ),
                    Container(
                      child: Hero(
                        tag: 'upper_menu',
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                              child: Expanded(
                                child: TextField(
                                  onChanged: (value){},
                                  decoration: InputDecoration(hintText: 'ФИО'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),                              child: Expanded(
                                child: TextField(
                                  onChanged: (value){},
                                  decoration: InputDecoration(hintText: 'Телефон или e-mail'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),                              child: Expanded(
                                child: TextField(
                                  onChanged: (value){},
                                  decoration: InputDecoration(hintText: 'Компания'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 470,
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
    ));
  }
}
