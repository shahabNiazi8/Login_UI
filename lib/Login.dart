import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:insta_app/ForgotPassword.dart';


class Mylogin extends StatefulWidget {

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.4,
        right: 10,
        left: 10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 30),
              fillColor: Colors.blueGrey[300]?.withOpacity(0.8),
            hintText: "Email Address",

            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),),
          SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 30),
              fillColor: Colors.blueGrey[300]?.withOpacity(0.8),
              hintText: "Password",
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              suffixIcon: togglepassword(),
            ),),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot_Password_Screen(),));
                  //function()
                }, child: Text("Forgot Password?", style: TextStyle(color: Colors.white),)),
              ),




            ],

          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Checkbox(value: checked, onChanged: (value){
                setState(() {checked=value?? false;

                });
              }),
              Text("Remember me",style: TextStyle(
                color: Colors.white
              ),)
            ],

          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed:(){

              },
              child: Text("Sigin" , style: TextStyle(color: Colors.white),),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 2,
                  width: 10,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 23,
                width: 33,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text("OR",style: TextStyle(color: Colors.black),),
                ),
              ),
              Expanded(
                child: Container(
                  height: 2,
                  width: 10,
                  color: Colors.white,
                ),
              ),


            ],
          ),
          SizedBox(
            height: 25,
          ),

          Text("Need an account?",style: TextStyle(
              color: Colors.white
          ),),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed:(){

              },
              child: Text("Sigin" , style: TextStyle(color: Colors.white),),
            ),
          ),








        ],
      ),
    );
  }

  togglepassword() {
    return IconButton(onPressed: (){}, icon: Icon(Icons.visibility),
    );
  }
}
