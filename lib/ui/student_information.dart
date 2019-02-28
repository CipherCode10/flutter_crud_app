import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_crud/model/student.dart';




class StudentInformation extends StatefulWidget{

  final Student  student ;
  StudentInformation(this.student);


  @override
  State<StatefulWidget> createState() => new infostate();

}



final studentref = FirebaseDatabase.instance.reference().child('Students');


class infostate extends State<StudentInformation>{




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,

      appBar: AppBar(
        title: Text('Student Info'),
        backgroundColor: Colors.orange[800],
      ),
      body: new Container(
        margin: EdgeInsets.only(top:5.0),
        child: Column(
          children: <Widget>[
            Text(
              widget.student.name,
              style: TextStyle(color: Colors.black , fontSize:12.0),
            ),
            Padding(padding: EdgeInsets.only(top:5.0),),

            Text(
              widget.student.age,
              style: TextStyle(color: Colors.black , fontSize:12.0),
            ),
            Padding(padding: EdgeInsets.only(top:5.0),),

            Text(
              widget.student.city,
              style: TextStyle(color: Colors.black , fontSize:12.0),
            ),
            Padding(padding: EdgeInsets.only(top:5.0),),

            Text(
              widget.student.dept,
              style: TextStyle(color: Colors.black , fontSize:12.0),
            ),
            Padding(padding: EdgeInsets.only(top:5.0),),

            Text(
              widget.student.desc,
              maxLines: 5,
              style: TextStyle(color: Colors.black , fontSize:12.0),
            ),
            Padding(padding: EdgeInsets.only(top:5.0),),

          ],
        ),
      ),

    );

  }

}