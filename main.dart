

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   final List title=['Communication Systems Quiz','OS Report','Buy some stuff','Go to the Gym','Flutter Task','Flutter Task بردو'];
    final List subtitle=['10:00 AM','11:00 AM','1:00 PM','2:00 PM','4:00 PM','6:00 PM'];

    return MaterialApp(
      home: Scaffold(
       
        appBar: AppBar(
          backgroundColor:Color(0xFF4368FF),
 
          centerTitle: true,
          title:  Text('Todo List',
      style: TextStyle(
        fontFamily: 'Raleway',
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.white,
        ),
          ),
        ),
backgroundColor:Color(0xFF4368FF),


      body: Container(
        
        child: ListView.builder(
          itemCount: title.length,
          itemBuilder: ((context, index) {
            return Container(
             
             child: ListTile(
               title: Text(
                title[index],
                style: TextStyle(
        fontFamily: 'Raleway',
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
        ),
               ),
              subtitle: Text(
                subtitle[index],
                style: TextStyle(
        fontFamily: 'Raleway',
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
        ),
              ),
              trailing: IconButton(onPressed: (){

                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder:(BuildContext context){
                    return AlertDialog(
                      
                     title: Text('Delete',
                      style: TextStyle(
                            fontWeight: FontWeight.bold
                      )
                     
                     ),



                      content: Text('Are you sure you want to delete this item ?',
                      style: TextStyle(
                            color: Colors.grey[600],
                              fontWeight: FontWeight.bold
                      )
                      
                      ,) ,
                       
                       actions: [

                         RaisedButton(
                          color: Colors.white,
                          child: Text('Cancel',
                          style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[600],
                      )
                      
                          ),
                          onPressed: ()
                         
                         {
                            Navigator.of(context).pop();
                         }
                         ),
                         RaisedButton(
                          color: Colors.white,
                          child: Text('Yes',
                          style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                      )
                      
                          ),
                          onPressed: ()
                         
                         {
                            Navigator.of(context).pop();
                         }
                         )



                       ],

                         
                    );
                  }
                  
                  );
              }, 
              
              
              
              
              
              
              
              icon: Icon(Icons.delete_outlined,color: Colors.white,)),
             ),
            );
          })
          
          ),
      ),
      
      
      
      
        )
    );
  }
}
