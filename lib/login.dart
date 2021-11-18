import 'package:femo/util/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  // ####################################################################################     Delare variable here
  String name="Welcome";
  bool textbtn=false;
  final _formKey=GlobalKey<FormState>();

  movetohome(BuildContext context)async{
    if (_formKey.currentState!.validate()) {
      setState(() {
        textbtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        textbtn = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              Image.asset("assets/images/login.png",fit: BoxFit.cover,height: 250,width: 250,),
              SizedBox(height:20.0,),
              Text(name,style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold ) ,),

              //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ yahan form ka material sab hai
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: "Username",hintText: "Enter Username"),
                      validator: (value){
                        if (value!.isEmpty){
                          return "Please Enter some text ";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Password",hintText: "Enter Password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        else if(value.length<6){
                          return "Password must be of 6 letter";
                        }
                        return null;
                      },

                    ),
                    SizedBox(height:20.0,),
                    //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ login button hai yahan par
                    SizedBox(height:30.0,),

                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(textbtn? 50:8),

                      child: InkWell(
                        onTap: () =>movetohome(context),

                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),

                          height: 50,
                          width:  textbtn? 50:150,
                          alignment: Alignment.center,

                          child: textbtn? Icon(Icons.done,color: Colors.white,): Text("Login",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )

    );
  }
}
