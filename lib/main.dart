import 'package:buginholding/home.dart';
import 'package:buginholding/login.dart';
import 'package:buginholding/passback.dart';
import 'package:buginholding/prereg.dart';
import 'package:buginholding/profile.dart';
import 'package:buginholding/registration.dart';
import 'package:buginholding/users_wmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:buginholding/users.dart';

void main() {
  return runApp(
      MaterialApp(
        initialRoute: 'LoginPage',
        routes: {
          'Home':(context) => const Home(),
          'LoginPage':(context) => const LoginPage(),
          'RegistrationPage':(context) => const RegistrationPage(),
          'Users':(context) => const UsersPage(),
          'UsersMenu':(context) => const UsersMenuPage(),
          'preRegistration':(context) => const PreRegPage(),
          'Profile':(context) => const ProfilePage(),
          'Passback':(context) => const PassbackPage(),
        },
      )
  );
}