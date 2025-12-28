import 'package:flutter/material.dart';
import 'main.dart'; // Import your Signup Page (check your file name)

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    super.initState();
    // This starts the timer when the screen opens
    _navigateToHome();
  }
  _navigateToHome() async{
    await Future.delayed(const Duration(seconds: 3),(){});
    if (!mounted) return;
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(builder: (context) => Signuppage()) // OR LoginPage
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor:Colors.blueGrey[50],
        body: Center(
          
        child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  FractionallySizedBox(
              widthFactor: 0.35,
                child:Image.asset('assets/images/app_icon3.png',
                fit: BoxFit.contain,
              ),
                  ),
                  SizedBox(height: 20),
              Text('Flutter Auth App',style: TextStyle(
                fontSize: 20,
              ),
              )
                ]
              ),  
        ) 
          );
        
  }
}