import 'package:cycle_rent/home/homePage.dart';
import 'package:cycle_rent/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authenticate/authenticate.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return either home or authenticate widget
    final user = Provider.of<User>(context);
    if (user == null){
      return Authenticate();
    }else{
      return Home();
    }
  }
}
