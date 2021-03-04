import 'package:flutter/material.dart';
import 'modelClass.dart';

void main()=> runApp(new Top());



class Top extends StatefulWidget{
  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "app name",
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is AppBar',), centerTitle: true,
        ),
        body: new HomeScreen(),

      ),

    );

  }
}

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

   // List<String> myList = ['Akash','Farhad','Hridoy','Biplob'];


    List<ModelClass> myList = [

      ModelClass(name: 'Akash',post: 'App'),
      ModelClass(name: 'Hridoy',post: 'Game'),
      ModelClass(name: 'Farhad',post: 'App'),
      ModelClass(name: 'Biplob',post: 'Game'),


    ];

    Widget infoTamplate(txt){
      return Card(
        child : Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Container(
                  height: 20,
                  width: 100,
                  child: Text('${txt.name}  ',style: TextStyle(fontSize: 18),)),

              Text(':  ',style: TextStyle(fontSize: 18),),
              Text(txt.post,style: TextStyle(fontSize: 18),),



            ],

          ),
        ),


      );
    }


    Widget HeadingTamplate(){
      return Card(


        child : Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Container(
                  height: 20,
                  width: 100,
                  child: Text('Name',style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold) ,)),

              Text('   ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('Post',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),



            ],

          ),
        ),


      );
    }

    return Container(

      child: Column(

        children: [

          HeadingTamplate(),

          Column(
            children:
            // myList.map((txt) => Text('${txt.name} = ${txt.post}')).toList(),
            myList.map((txt) => infoTamplate(txt)).toList(),


          ),

        ],



      )




    );

  }
}