
import 'package:cycle_rent/addcycle.dart';
import 'package:cycle_rent/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' ;

class Home extends StatefulWidget{
  final AuthService _auth = AuthService();
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
          leading: Icon(Icons.directions_bike,size: 35,color: Colors.black45,) ,
        actions:  <Widget>[
          IconButton(
          icon: const Icon(Icons.mark_unread_chat_alt_outlined,),
          onPressed: (){},
         ),

          IconButton(
            icon: const Icon(Icons.person_2_sharp,),
            onPressed: (){},
          ),

        ],
        shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft:Radius.circular(10),
              bottomRight: Radius.circular(10)
            )
        ),
        title:  Text("Rent A Cycle",

        style: TextStyle(fontSize: 20,
            color:Colors.white,
            fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.green[300],
        padding: EdgeInsets.all(15.0),
        child: GridView.count(crossAxisCount: 2,

        children:<Widget> [

          Card(color: Colors.white,
            elevation: 10.0,
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Add()));
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children:const <Widget>[
                      Icon(Icons.directions_bike,size:70.0),
                      Text("Add cycle", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              )
          ),
          Card(color: Colors.white,
              elevation: 10.0,
              shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children:const <Widget>[
                      Icon(Icons.manage_search_sharp,size:70.0),
                      Text("Search Cycle", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              )
          ),
          Card(color: Colors.white,
              elevation: 10.0,
              shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children:const <Widget>[
                      Icon(Icons.location_on_outlined,size:70.0),
                      Text("Location", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              )
          ),
          Card(color: Colors.white,
              elevation: 10.0,
              shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children:const <Widget>[
                      Icon(Icons.history_sharp,size:70.0),
                      Text("User History", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              )
          ),
          ElevatedButton(onPressed: () async{
            await _auth.signOut();
          }, child: const Text('Log out')),
        ],
        ),

      ),


    );
  }

}

