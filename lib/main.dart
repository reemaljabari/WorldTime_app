
import 'package:flutter/material.dart';
import 'package:worldwide_project/pages/choose_location.dart';
import 'package:worldwide_project/pages/home.dart';
import 'package:worldwide_project/pages/loading.dart';

void main()=> runApp( MaterialApp(
  debugShowCheckedModeBanner: false ,
  initialRoute: '/',
  routes:{  '/': (context)=> Loading(),
    '/home':(context)=>Home(),
    '/location':(context)=>ChooseLocation()

  } ,



));


