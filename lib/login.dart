import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _Login();
}
class _Login extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final emailAddress = TextEditingController();
  final passWord = TextEditingController();
  bool _ispasswordVisible=false;
  final snackBar = SnackBar(
    content:Center( 
    child: Text('Login Successful')),
    behavior: SnackBarBehavior.floating,
    duration: Duration(seconds: 2),
    padding: EdgeInsets.all(40),
    );
  final snackBar1 = SnackBar(
    content: Center(
      child: Text('Invalid Email or Password'),),
    behavior: SnackBarBehavior.floating,
    duration: Duration(seconds: 2),
    padding: EdgeInsets.all(40),
    );  
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
      child:Form(
        key: _formKey,
        child:Column(
        children: [  
          Text('Login',style: TextStyle(
        fontSize: 50,
        fontWeight:FontWeight.bold,
        color: Color.fromARGB(255, 32, 170, 224), 
      ),),
      const SizedBox(height: 40),
         TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'Email Address',
            hintText: 'example@you.com',
            border: OutlineInputBorder(), 
          ),
            validator: (value) {
              if(value == null || value.isEmpty){
                return 'Enter Email Address';
              }
              final bool emailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
              if(!emailValid){
                return 'Invalid Email';
              }
              return null;  
            },
         ),
         const SizedBox(height: 40),
         TextFormField(
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration:  InputDecoration(
            prefixIcon: Icon(Icons.password_rounded),
            labelText: 'password',
            hintText: 'minimum 8 characters',
            border: OutlineInputBorder(), 
            suffixIcon: IconButton(onPressed: (){
              setState(() {
                _ispasswordVisible = !_ispasswordVisible;
              });
            }, 
            icon:Icon( _ispasswordVisible ? Icons.visibility : Icons.visibility_off,)
            
          ),
          ),
          validator: (value) {
            if(value == null || value.isEmpty){
              return 'Enter Password'; 
            }
            if(value.length<8){
              return 'Minimum 8 characters'; 
            }
            return null;
          } ,
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
                if(_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(snackBar1);
                }
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
      )
    );
  }
}