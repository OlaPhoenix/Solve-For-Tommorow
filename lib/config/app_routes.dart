// ignore_for_file: prefer_const_constructors

import 'package:sft/pages/list_page.dart';
import 'package:sft/pages/login_page.dart';
import 'package:sft/pages/logistics_page.dart';
import 'package:sft/pages/profile_page.dart';
import 'package:sft/pages/signup_page.dart';

class AppRoutes {
  static final pages = {
    signup: (context) => SignupPage(),
    profile: (context) => ProfilePage(),
    login: (context) => LoginPage(),
    list: (context) => ListPage(),
    logistics: (context) => LogisticsPage(),
  };

  static const signup = '/signup';
  static const profile = '/profile';
  static const login = '/login';
  static const list = '/list';
  static const logistics = '/logistics';
}
