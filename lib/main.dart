import 'package:flutter/material.dart';
import 'package:login_page/login.dart';
import 'package:login_page/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
class Signuppage extends StatefulWidget {
  const Signuppage({super.key});
@override
State<Signuppage> createState() => _Signuppage();
}
class _Signuppage extends State<Signuppage>{
  final _formKey= GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _ispasswordVisible= false;
  final snackBar = SnackBar(
                content: Center(
                child: Text('Sign up successful')),
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds:2),
                padding: EdgeInsets.all(20),);
  final snackBar1 = SnackBar(
                content:Center( 
                child: Text('Invalid or Empty field')),
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds:2),
                padding: EdgeInsets.all(20),);
 @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 170, 224),
        centerTitle: true,
        title:Text('Flutter Auth App',style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255)
          ),
          ),
          ),
     
       body: SingleChildScrollView(
       child:Center(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child : Form(
        key: _formKey,
        child:Column(
        children: [  
          Text('Sign Up',style: TextStyle(
        fontSize: 50,
        fontWeight:FontWeight.bold,
        color: Color.fromARGB(255, 32, 170, 224), 
      ),),
      const SizedBox(height: 40),
         TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'First Name',
            hintText: 'First Name',
            border: OutlineInputBorder(), 
          ),
          validator: (value){
            if(value==null || value.isEmpty){
              return 'Enter your name';
              
            }else{
              return null;
            }
          },
         ),
          const SizedBox(height: 40),
         TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            prefixIcon:Icon(Icons.person),
            labelText: 'Last Name',
            hintText: 'Last Name',
            border: OutlineInputBorder(), 
          ),
          validator: (value){
            if(value==null || value.isEmpty){
              return 'Enter your name';
            }else{
              return null;
            }
          },
         ),
      const SizedBox(height: 40),
         TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email Address',
            hintText: 'example@you.com',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if(value == null || value.isEmpty){
              return 'Enter Email Address'; 
            }
            final bool validEmail = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
              ).hasMatch(value);
            if (!validEmail) {
              return 'Please enter a valid email address';
             }
             return null;
          },  
         ),
         const SizedBox(height: 40),
         TextFormField(
          keyboardType: TextInputType.text,
          obscureText: !_ispasswordVisible,
          decoration:  InputDecoration(
            prefixIcon: Icon(Icons.password_rounded),
            labelText: 'password',
            hintText: 'minimum 8 characters',
            border: OutlineInputBorder(),
            suffixIcon: IconButton(onPressed:() {
              setState(() {
                   _ispasswordVisible = !_ispasswordVisible;
                      });
                  },
            icon:Icon(
              _ispasswordVisible ? Icons.visibility :Icons.visibility_off,
            ),) 
          ),

          validator: (value) {
          if(value==null || value.isEmpty){
            return 'Enter password';
          }
          if(value.length < 8){
            return 'password must be atleast 8 characters';
          }
          return null;
          },     
         ),
         const SizedBox(height: 20),
         FractionallySizedBox(
               widthFactor: 0.8, // 0.8 means 80% of the parent's width
               child: ElevatedButton(
               onPressed: () {
                if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(snackBar);  
                Navigator.pushReplacement(context,
                MaterialPageRoute(builder:(context) => Login()
                )
                );
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(snackBar1);
                }
               },
               style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 32, 170, 224),
                ),
               child: const Text('SIgn Up',style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255)
               ),
               ),
               ),
              ),
              FractionallySizedBox(
                widthFactor: 0.8,
          child:TextButton(onPressed: (){
            if(_formKey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            Navigator.pushReplacement(context,
             MaterialPageRoute(builder: (context)=>Login()
             
             )
             );
             
            }else{
              ScaffoldMessenger.of(context).showSnackBar(snackBar1);
            }
          },
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
          Text('Already have an account?',style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0)
          ),),
          Text('Login',style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            )
            )
        ]
          ),
          ),
        ),  
        ]
        ),
        ),
        ),
       ),
       ),  
    );
  }
}
