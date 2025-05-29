
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/utils/Colors.dart';
import 'package:se7ety/core/utils/Font_style.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Stack(
          children: [
            Container(
             
             child: Image.asset(
              "assets/images/welcome.png",
              fit: BoxFit.cover,
              width: double.infinity,
             ),
             
            ),
            Positioned(
              top:100,right: 40 ,child: 
              Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
                Text("اهلا بيك",style: getTitleTextStyle(fontSize:40 ),),
                const Gap(10)
,                Text("سجل واحجز دكتورك وانت في البيت",style: getBodyTextStyle(color: AppColors.Dark),)
              ],)),
            Positioned(
              bottom: 100,
              left: 14,
              right: 14,
              child: Container(width:300,height: 280,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(134, 31, 158, 187)),child:Column(children: [
                const Gap(20),
                Text("سجل دلوقتي ك",style: getBodyTextStyle(color:Colors.white,fontSize: 20),),
                const Gap(40),
                 SizedBox(
                  height: 72,
                  width: 340,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignupPage()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(172, 216, 245, 253),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      " دكتور",
                      style:getBodyTextStyle(color: AppColors.Dark,fontWeight: FontWeight.w700) ,
                    ),
                  ),
                ),
                const Gap(20),
                 SizedBox(
                  height: 72,
                  width: 340,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignupPage()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(172, 216, 245, 253),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      " مريض",
                      style:getBodyTextStyle(color: AppColors.Dark,fontWeight: FontWeight.w700) ,
                    ),
                  ),
                ),

              ],),),

            )
          ],
        ),
      ),
    );
  }
}
