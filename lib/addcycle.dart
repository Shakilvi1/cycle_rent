
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AddState();
  }
}

class _AddState  extends State<Add>{
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 10.0,
        leading: Icon(Icons.directions_bike,size: 35,color: Colors.black45,) ,
       title:  Text("Add Your Cycle",
        style: TextStyle(fontSize: 20,
            color:Colors.white,
            fontWeight: FontWeight.bold),
      ),

    ),

    body: Container(

      child: ListView(
        children: <Widget>[

          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cycle Brand',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: addressController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Address',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: phoneController,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Contect number',
              ),
            ),
          ),

        ],
      ),

    ),


    );
  }
}
