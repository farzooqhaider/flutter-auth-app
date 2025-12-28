import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {


  @override
  Widget build(BuildContext context) {
    
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
          Text('Login',style: TextStyle(
        fontSize: 50,
        fontWeight:FontWeight.bold,
        color: Color.fromARGB(255, 32, 170, 224), 
      ),),
      const SizedBox(height: 40),
         TextField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person),
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
               widthFactor: 0.8, 
                // 0.8 means 80% of the parent's width
               child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor : Color.fromARGB(255, 32, 170, 224),
                ),
               onPressed: () {
                
               },
               child: const Text('Login',style: TextStyle(
                color: Colors.white,
               ),),
               ),
              )
      ]
        
      )
      )
      )
      )
    );
  }
}