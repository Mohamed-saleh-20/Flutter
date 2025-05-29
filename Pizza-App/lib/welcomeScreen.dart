import 'package:first_app/FoodPage.dart';
import 'package:first_app/core/CusomButton.dart';
import 'package:flutter/material.dart';
import 'package:first_app/OrderScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 181, 181, 181),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://mir-s3-cdn-cf.behance.net/project_modules/disp/e41b3d24550799.5633619f93cb3.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 120,
            left: 120,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: "Welcome To ",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        children: [
                          TextSpan(
                              text: "WOW",
                              style: TextStyle(color: Colors.orange)),
                          TextSpan(text: " Pizza"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: "See our Menu",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrderScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
