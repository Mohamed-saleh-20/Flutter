import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/Functions/navigatore.dart';
import 'package:se7ety/core/utils/Colors.dart';
import 'package:se7ety/feature/intro/welcom_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();  
    // String token = AppLocalStorage.gatData(key: AppLocalStorage.token) ?? " ";
    Future.delayed(const Duration(seconds: 3), () {
      // if (token.isNotEmpty) {
      //   pushReplacment(context, WelcomeScreen());
      // } else {
        pushReplacment(context, const WelcomeScreen());
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(width: double.infinity,color:AppColors.Whight,child: Column(children: [
        const Spacer( flex: 1,),
        Image.asset("assets/images/logo.png",width: 320,),
        const Spacer( flex: 1,)
      ],),),
    );
  }
}
