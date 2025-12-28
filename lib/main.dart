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
 @override
  Widget build(BuildContext context){
    
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 170, 224),
        title: Center(
          child:Text('Flutter Auth App',style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255)
          ),
          ),
          ),
      ),
       body: SingleChildScrollView(
       child:Center(
        child: Padding(
      padding: const EdgeInsets.all(20),
        child:Column(
        children: [  
          Text('Sign Up',style: TextStyle(
        fontSize: 50,
        fontWeight:FontWeight.bold,
        color: Color.fromARGB(255, 32, 170, 224), 
      ),),
      const SizedBox(height: 40),
         TextField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'First Name',
            hintText: 'First Name',
            border: OutlineInputBorder(),
            
          ),
         ),
          const SizedBox(height: 40),
         TextField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            prefixIcon:Icon(Icons.person),
            labelText: 'Last Name',
            hintText: 'Last Name',
            border: OutlineInputBorder(),
            
          ),
         ),
      const SizedBox(height: 40),
         TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email Address',
            hintText: 'example@you.com',
            border: OutlineInputBorder(),
            
          ),  
         ),
         const SizedBox(height: 40),
         TextField(
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.password_rounded),
            labelText: 'password',
            hintText: 'minimum 8 characters',
            border: OutlineInputBorder(),
            
          ),  
         ),
         const SizedBox(height: 20),
         FractionallySizedBox(
               widthFactor: 0.8, // 0.8 means 80% of the parent's width
               child: ElevatedButton(
               onPressed: () {
                Navigator.pushReplacement(context,
                MaterialPageRoute(builder:(context) => Login()
                )
                );
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
            Navigator.pushReplacement(context,
             MaterialPageRoute(builder: (context)=>Login()
             )
             );
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
        )
       )
      
       ),  
    );
  }

}
