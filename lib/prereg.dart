import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreRegPage extends StatelessWidget {
  const PreRegPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreRegistration();
  }
}

class PreRegistration extends StatefulWidget {
  const PreRegistration({Key? key}) : super(key: key);

  @override
  State<PreRegistration> createState() => _PreRegistrationState();
}

class _PreRegistrationState extends State<PreRegistration> {

  List<String> genders = ['Пол', 'Мужской', 'Женский', 'Другое'];
  List<String> positions = ['Должность', 'Дизайнер', 'CEO'];
  List<String> companies = ['Компания', 'In-house'];
  String? selectedItem = 'Пол';
  String? selectedItem2 = 'Должность';
  String? selectedItem3 = 'Компания';

  static bool isHiddenPassword1 = true;
  static bool isHiddenPassword2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Center(child: Image.asset('images/bugin_holding.png')),
                      height: 50.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(hintText: 'Фамилия'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(hintText: 'Имя'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(hintText: 'Отчество'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(hintText: 'Электронная почта'),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(),
                        value: selectedItem,
                        items: genders.map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(item, style: TextStyle(fontSize: 17.0),),
                        )).toList(),
                        onChanged: (item) => setState(() => selectedItem = item),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(
                          hintText: 'Дата рождения', suffixIcon: SvgPicture.asset('images/date_birth'),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(hintText: 'Телефон'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      obscureText: isHiddenPassword1,
                      onChanged: (String value){},
                      decoration: InputDecoration(
                          hintText: 'Пароль',
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
                      height: 10.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(),
                        value: selectedItem2,
                        items: positions.map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(item, style: TextStyle(fontSize: 17.0),),
                        )).toList(),
                        onChanged: (item) => setState(() => selectedItem2 = item),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(),
                        value: selectedItem3,
                        items: companies.map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(item, style: TextStyle(fontSize: 17.0),),
                        )).toList(),
                        onChanged: (item) => setState(() => selectedItem3 = item),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
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
                      onPressed: () {},
                      child: Text(
                        'Войти',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
