import 'package:ecomapp/Auth/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  var myformkey = GlobalKey<FormState>();


  TextEditingController useremail = TextEditingController();
  TextEditingController userpass = TextEditingController();

  bool isshow = false;

  showandhidepass(){

    setState(() {
      isshow = !isshow;
    });
  }





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        key:myformkey ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("User Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green,letterSpacing: 2),),
            SizedBox(height: 20),

            Padding(

              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty || value.length < 8 || value.length > 15)
                  {
                    return "Please Enter Proper Email";
                  }

                  return null;


                },
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,width: 3)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 3)
                    ),
                    labelText: "Enter Your Email"
                ),
              ),
            ),
            SizedBox(height: 20),


            Padding(

              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: isshow,
                validator: (value) {
                  if(value!.isEmpty || value.length < 8 || value.length > 15)
                  {
                    return "Enter Password Please";
                  }

                  return null;


                },
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,width: 3)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 3)
                    ),
                    labelText: "Enter Your Password",
                    suffix: IconButton(
                        
                        onPressed: showandhidepass, icon: Icon(Icons.remove_red_eye))

                ),



              ),
            ),
            SizedBox(height: 20),

            TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),

                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white

              ),
              onPressed: (){

                if(myformkey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("SignUp Successfully")));
                }


              }, child: Text("Login",style: TextStyle(fontSize: 25),),),
            SizedBox(height: 20),

            TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),

                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white

              ),
              onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp() ,));

              }, child: Text("Not Registered!! Go to SignUp",style: TextStyle(fontSize: 16),),),



          ],
        ),
      ),
    );

  }
}
