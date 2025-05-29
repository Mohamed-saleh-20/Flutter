import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/constants/Custom_elevated_button.dart';
import 'package:se7ety/core/constants/Custome_textForm.dart';
import 'package:se7ety/core/utils/Colors.dart';
import 'package:se7ety/core/utils/Font_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isDoctor=true;
  
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:SingleChildScrollView(
          child: Container(width: double.infinity,color:AppColors.Whight,child: Column(children: [
            const Gap(60),
            Image.asset("assets/images/logo.png",width: 240,),
            Text("سجل حساب جديد ك دكتور",style: getTitleTextStyle(fontSize: 20),)
            ,const Gap(30),
            const CustomTextFormField(     // text field for Name
              hintText: "الاسم", 
              prefixIcon: Icons.person,
              isPassword:false,
              ),   
             const Gap(30),
             const CustomTextFormField(     //text field for email
              hintText: "البريد الاكتروني", 
              prefixIcon: Icons.email,
              isPassword: false,
              ),
              const Gap(30),
             const CustomTextFormField(     //password field
              hintText: "ادخل الرقم السري ",
               prefixIcon: Icons.lock,
               isPassword: true,
               ),
               const Gap(40),
               CustomElevatedButton(buttonText: "تسجل الدخول", onPressed:(){

               } ),const Gap(20),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("لدي حساب ؟",style: getBodyTextStyle(color: AppColors.Dark,fontSize: 18),),
                TextButton(onPressed: (){}, child: Text("تسجيل الدخول",style:
                getTitleTextStyle(fontWeight: FontWeight.w500,fontSize: 17),)),
               ],)
                
          ],),),
        ),
      ),
    );
  }
}

