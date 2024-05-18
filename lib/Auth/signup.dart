import 'package:ecomapp/Auth/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var myformkey = GlobalKey<FormState>();


  TextEditingController username = TextEditingController();
  TextEditingController usercontact = TextEditingController();
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
            Text("User Sign Up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green,letterSpacing: 2),),
            SizedBox(height: 20),
            Padding(

              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(

                validator: (value) {
                  if(value!.isEmpty || value.length < 3 || value.length > 10)
                    {
                      return "Please Enter Proper Name";
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

                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink,width: 3)
                    ),

                  labelText: "Enter Your Name"
                ),
              ),
            ),
            SizedBox(height: 20),

            Padding(

              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty || value.length < 8 || value.length > 15)
                  {
                    return "Please Enter Proper Contact";
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
                    labelText: "Enter Your Contact"
                ),
              ),
            ),

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
                  suffix: IconButton(onPressed: showandhidepass, icon: Icon(Icons.remove_red_eye))

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


              }, child: Text("Sign Up",style: TextStyle(fontSize: 25),),),
            SizedBox(height: 20),

            TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),

                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white

              ),
              onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(),));

              }, child: Text("Already Registered!! Go to Login",style: TextStyle(fontSize: 16),),),



          ],
        ),
      ),
    );


  }
}
