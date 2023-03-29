
import 'package:cycle_rent/Wrapper.dart';
import 'package:cycle_rent/models/user.dart';
import 'package:cycle_rent/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

   return StreamProvider<User>.value(
     value: AuthService().user,
     initialData: null,
     child: MaterialApp(
       home: Wrapper(),
     ),
   );
  }}

