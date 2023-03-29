
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../home/homePage.dart';
import '../service/auth.dart';


class Singup extends StatelessWidget {
  const Singup({Key? key}) : super(key: key);

  static const String _title = 'Rent A Cycle';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),),
        body:   MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
   MyStatefulWidget({Key? key}) : super(key: key);
  final AuthService _auth = AuthService();

  String email='';
  String password='';

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final AuthService _auth =AuthService();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[


            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.directions_bike,
                  size: 100,
                  color: Colors.black,)
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Rent a Bicycle',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500 ,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign Up Here',
                  style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            ElevatedButton(onPressed: ()async {
             try
             {
                 dynamic result= await _auth.registerWithEmailAndPassword( email , passwoard);

                    } on FirebaseAuthException catch (e) {
              if (e.code == 'weak-password') {
                       print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                           print('The account already exists for that email.');
                          }
                        } catch (e) {
                       print(e);
               }

            }, child: Text('Sing up'))
          ],
        ));
  }


}


