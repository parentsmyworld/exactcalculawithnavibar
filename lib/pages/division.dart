import 'package:flutter/material.dart';

class Div extends StatefulWidget {
  @override
  _DivState createState() => _DivState();
}

class _DivState extends State<Div> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  String sentence="";
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xffFBD3E9),Color(0xffBB377D)])),
      child: Column(
        children: [
          SizedBox(height: 20.0,),
          TextField(
            controller: num1,
            decoration: InputDecoration(
              hintText: "Number 1",
              prefixIcon: Icon(Icons.keyboard),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),

            ),
          ),
          SizedBox(height: 20.0,),
          TextField(
            controller: num2,
            decoration: InputDecoration(
              hintText: "Number 2",
              prefixIcon: Icon(Icons.keyboard),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),

            ),
          ),
          SizedBox(height: 20.0,),
          GestureDetector(
            onTap: (){
              setState(() {
                var a=double.parse(num1.text);
                var b=double.parse(num2.text);
                var c=a/b;
                sentence="$a / $b = $c";
              });
            },
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border(top: BorderSide(width: 0.6),
                        right:BorderSide(width: 0.6),
                        left: BorderSide(width: 0.6),
                        bottom: BorderSide(width: 0.6))
                ),
                child: Center(child: Text("Divide")),
                height: 40,
                width: 100,
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(sentence,style: TextStyle(color: Colors.red),)


        ],
      ),
    )
    ;
  }
}
