import 'package:flutter/material.dart';
import 'package:foodapp/src/pages/coupon_page.dart';
import 'package:foodapp/src/pages/homeFood_page.dart';
import 'package:foodapp/src/pages/home_page.dart';
import 'package:foodapp/src/pages/login_page.dart';
import 'package:foodapp/src/pages/miPerfil_page.dart';
import 'package:foodapp/src/pages/perfil_page.dart';
import 'package:foodapp/src/pages/welcome_page.dart';
/*
import 'package:practica/pages/LoginPage.dart';
import 'package:practica/pages/MyPerfil_page.dart';
import 'package:practica/pages/WelcomePage.dart';
import 'package:practica/pages/couponPage.dart';
import 'package:practica/pages/eFood.dart';
import 'package:practica/pages/perfil.dart';*/

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
   'login': (BuildContext context) => LoginPage(),
    'welcome': (BuildContext context) => WelcomePage(),
    'homeFood': (BuildContext context) => eFoodPage(),
    'perfil': (BuildContext context) => PerfilPage(),
  'myperfil': (BuildContext context) => MyPerfil(),
  'coupon': (BuildContext context) => CouponPage(),
  };
}
