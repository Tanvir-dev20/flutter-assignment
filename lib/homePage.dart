import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App',
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        centerTitle: true,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello, World!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
                fontWeight: FontWeight.bold,),),
                SizedBox(height: 10,),
          
              Text('Welcome to Flutter!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,),),
                SizedBox(height: 10,),
          
                ClipRRect(
                  child: Image.asset('image/download.png',height: 120,width: 150,),
                ),
                SizedBox(height: 10,),
          
                ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Button Pressed'),
                    duration: Duration(seconds: 2),)
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ), 
                child: Text('Press Me',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),)
                )
            ],
          ),
        ),
    );
  }
}