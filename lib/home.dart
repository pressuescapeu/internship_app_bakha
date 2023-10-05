import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  
  static const List <String> svgs = [
    'images/polsovateli.svg',
    'images/tasks.svg',
    'images/done.svg',
    'images/shtrafy.svg',
    'images/plans.svg',
    'images/otpusk.svg',
    'images/raskhody.svg',
    'images/documenty.svg',
    'images/biblioteka.svg',
    'images/rapisanie.svg',
    'images/spravochnik.svg',
    'images/zhaloby.svg',
  ];
  
  static const List<String> svg2 = [
    'images/help.svg', 'images/leave.svg',
  ];

  static const List<String> labels = [
    'Пользователи',
    'Задачи',
    'Отметки',
    'Штрафы',
    'Планы',
    'Отпуск',
    'Расходы',
    'Документы',
    'Библиотека',
    'Расписание кабинетов',
    'Справочник',
    'Жалобы и предложения',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Scaffold(
            backgroundColor: Color(0xFFE5E5E5),
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                      TextButton(
                        style: ElevatedButton.styleFrom(),
                        onPressed: (){
                          Navigator.pushNamed(context, 'Profile');
                        },
                        child: Container(
                          height: 70.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(child: SvgPicture.asset('images/avatar.svg'), height: 50.0, width: 50.0,
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Саги Кани',
                                    style: TextStyle(fontSize: 18, color: Colors.black87),
                                  ),
                                  Text(
                                    'Перейти в профиль',
                                    style: TextStyle(fontSize: 14.9, color: Colors.grey[700]),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    Container(height: 10.0, color: Color(0xFFE5E5E5),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        borderRadius: BorderRadius.circular(12.0),),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Color(0xFF819299),),
                          labelText: 'Что нужно найти?'
                        ),

                      ),
                    ),
                    Container(height: 10.0, color: Color(0xFFE5E5E5),),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 528.0,
                      child: ListView.separated(
                          separatorBuilder: (context, index) => Divider(
                            color: Color(0xffe5e5e5),
                          ),
                          itemCount: labels.length,
                          itemBuilder: (BuildContext context, int index){
                            return Container(
                              height: 44.0,
                              child: ListTile(
                                leading: SvgPicture.asset(svgs[index]),
                                title: Text(labels[index], style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 16.0
                                ),),
                                trailing: Icon(Icons.chevron_right),
                                onTap: (){
                                  if (index == 0){
                                    Navigator.pushNamed(context, 'Users');
                                  }
                                },
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                fixedSize: Size(119, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                )
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  SvgPicture.asset(svg2[1]),
                                  SizedBox(width: 8.0,),
                                  Text('Выйти', style: TextStyle(fontSize: 16.0, fontFamily: 'Helvetica', color: Colors.black),)
                                ]
                            ),
                          ),
                          SizedBox(width: 24,),
                          ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              fixedSize: Size(107, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  SvgPicture.asset(svg2[1]),
                                  SizedBox(width: 8.0,),
                                  Text('Выйти', style: TextStyle(fontSize: 16.0, fontFamily: 'Helvetica', color: Colors.black),)
                                ]
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
      ),
    );
  }
}
